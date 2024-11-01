import pymysql
from flask import Flask, jsonify, request
from flask_cors import CORS

from UserGenre import UserGenre

app = Flask(__name__)
CORS(app)  # Це дозволяє CORS для всіх запитів

# Функція для підключення до бази даних
def get_db_connection():
    connection = pymysql.connect(
        host='localhost',
        database='film_program',
        user='root',
        password='12345678'
    )
    return connection

# Отримання списку фільмів
@app.route('/movies', methods=['GET'])
def get_movies():
    connection = get_db_connection()
    try:
        with connection.cursor() as cursor:
            cursor.execute("SELECT * FROM movie;")
            movies = cursor.fetchall()
            # Перетворюємо результати в словники, якщо ви не використовуєте DictCursor
            response = [
                {
                    'movie_id': row[0],
                    'title': row[1],
                    'genre': row[2],
                    'rating': row[3],
                    'release_year': row[4],
                    'movie_src': row[5]
                }
                for row in movies
            ]
            return jsonify(response)  # Повертаємо JSON відповідь
    except Exception as e:
        return jsonify({"error": str(e)}), 500
    finally:
        connection.close()

# Оновити список рекомендацій для усіх користувачів
@app.route('/movies/refreshRecommendations', methods=['POST'])
def refresh_recommendations():
    connection = get_db_connection()
    try:
        with connection.cursor() as cursor:
            # 1. Видаляємо попередні рекомендації
            cursor.execute("DELETE FROM movie_recommendation")

            # 2. Отримуємо кожного користувача та його найпопулярніший жанр
            cursor.execute("""
                SELECT u.id AS user_id, m.genre, COUNT(m.movie_id) AS genre_count
                FROM app_user u
                JOIN user_viewed_movies v ON u.id = v.user_id
                JOIN movie m ON v.movie_id = m.movie_id
                GROUP BY u.id, m.genre
                HAVING genre_count = (
                    SELECT MAX(genre_count)
                    FROM (
                        SELECT u2.id, m2.genre, COUNT(m2.movie_id) AS genre_count
                        FROM app_user u2
                        JOIN user_viewed_movies v2 ON u2.id = v2.user_id
                        JOIN movie m2 ON v2.movie_id = m2.movie_id
                        WHERE u2.id = u.id
                        GROUP BY m2.genre
                    ) AS max_genre
                )
            """)
            user_genre_data = cursor.fetchall()
            # Перетворюємо результати у список entity UserGenre
            user_genre_list = [UserGenre(row[0], row[1], row[2]) for row in user_genre_data]

            # 3. Для кожного користувача отримуємо список рекомендованих фільмів
            for user_genre in user_genre_list:
                user_id = user_genre.user_id
                genre = user_genre.genre

                # Отримуємо фільми, які відповідають жанру, але ще не переглянуті користувачем
                cursor.execute("""
                    SELECT movie_id
                    FROM movie
                    WHERE genre = %s AND movie_id NOT IN (
                        SELECT movie_id FROM user_viewed_movies WHERE user_id = %s
                    )
                    LIMIT 5
                """, (genre, user_id))

                recommended_movies = cursor.fetchall()

                # Додаємо рекомендації до таблиці movie_recommendation
                for movie in recommended_movies:
                    cursor.execute("""
                        INSERT INTO movie_recommendation (user_id, movie_id) 
                        VALUES (%s, %s)
                    """, (user_id, movie[0]))

            # Зберігаємо всі зміни в базі даних
            connection.commit()
            return jsonify({"message": "Рекомендації успішно оновлено!"}), 200

    except Exception as e:
        return jsonify({"error": str(e)}), 500
    finally:
        connection.close()

# Запуск сервера
if __name__ == '__main__':
    app.run(debug=True)
