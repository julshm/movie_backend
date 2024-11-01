USE film_program;

INSERT INTO movie (movie_id, title, genre, rating, release_year, movie_src)
VALUES (1, 'Топ Ган: Меверік', 'Екшн', 8.2, 2022, 'https://upload.wikimedia.org/wikipedia/ru/7/7d/Top_Gun-_Maverick.jpg'),
       (2, 'Джентльмени', 'Екшн', 7.8, 2020, 'https://uakino.me/uploads/posts/2022-05/1652299288_cover8d80d8bdebdf654f_md.jpg'),
       (3, 'Гладіатор', 'Екшн', 8.5, 2000, 'https://uakino.me/uploads/post/Gladiator/fVF3wyy3DPHBr7lpzS2ScQp2XU7.jpg'),
       (4, 'Дюна', 'Екшн', 8.0, 2021, 'https://uakino.me/uploads/posts/2021-09/163223750919_dune.jpg'),
       (5, 'Веном', 'Екшн', 6.6, 2018, 'https://uakino.me/uploads/posts/2018-02/1519240311_1.jpg'),
       (6, 'Аватар', 'Екшн', 7.9, 2009, 'https://uakino.me/uploads/posts/2022-09/1663851044_11.jpg'),
       (7, 'Реальна сталь', 'Екшн', 7.1, 2011, 'https://uakino.me/uploads/posts/2021-09/1632215214_kinopoisk_ru-real-steel-1670774-o-kopiya_550.jpg'),
       (8, 'Дедпул', 'Екшн', 8.0, 2016, 'https://uakino.me/uploads/post/Deadpool/vEHv5b2ONN5SZHQa6mTzSfxU9kk.jpg'),
       (9, 'Інтерстеллар', 'Драма', 8.7, 2014, 'https://uakino.me/uploads/post/Interstellar/t9HT1HX2YTHeZ62IgyGQwxBv5VW.jpg'),
       (10, 'Форрест Ґамп', 'Драма', 8.8, 1994, 'https://uakino.me/uploads/mini/poster/d2/3625588505c1e0846056868b756a8f.webp'),
       (11, 'Бійцівський клуб', 'Драма', 8.8, 1999, 'https://uakino.me/uploads/post/Fight%20Club/imCVaunF2Wl3ZRYOH1XB047sTyb.jpg'),
       (12, 'Титанік', 'Драма', 7.9, 1997, 'https://uakino.me/uploads/post/Titanic/2XTMRX7xgBh3aoJnsUAE6aB1wza.jpg'),
       (13, 'Список Шиндлера', 'Драма', 9.0, 1993, 'https://uakino.me/uploads/posts/2022-08/1661872001_11.jpg'),
       (14, 'Втеча з Шоушенка', 'Драма', 9.3, 1994, 'https://uakino.me/uploads/post/The%20Shawshank%20Redemption/9NdY1WWLZKTjRAdDHrqWz4IdgdR.jpg'),
       (15, 'Обдарована', 'Драма', 7.6, 2017, 'https://uakino.me/uploads/post/Gifted/vBK3UQUSHYDJ4hI3A0GpeK76rcu.jpg'),
       (16, 'Зелена миля', 'Драма', 8.6, 1999, 'https://uakino.me/uploads/post/The%20Green%20Mile/bqwOUBxtK0KWijnSAR5ykWyQamn.jpg'),
       (17, 'Сам удома', 'Комедія', 7.7, 1990, 'https://uakino.me/uploads/post/Home%20Alone/p1orBbbiKvCcQRmkPSV7rOPBUUp.jpg'),
       (18, 'Джуманджі: Поклик джунглів', 'Комедія', 6.9, 2017, 'https://uakino.me/uploads/posts/2017-12/1514475031_1.jpg'),
       (19, 'Погані хлопці: Все або нічого', 'Комедія', 7.0, 2024, 'https://uakino.me/uploads/posts/2024-07/1721742181_1721741597_6hgtgi5sqoxum2nbqzl3np5oldo.jpg'),
       (20, 'Безславні виродки', 'Комедія', 8.4, 2009, 'https://uakino.me/uploads/post/Inglourious%20Basterds/i2nWrz7hNTcgjRdY57PPKs01ytu.jpg'),
       (21, 'Пірати Карибського моря: Помста Салазара', 'Комедія', 6.5, 2017, 'https://uakino.me/uploads/post/Pirates%20of%20the%20Caribbean_%20Dead%20Men%20Tell%20No%20Tales/7ZX9f8TKB9k47cVbFsC5CdRuDri.jpg'),
       (22, 'Сімейний план', 'Комедія', 6.3, 2023, 'https://uakino.me/uploads/posts/2024-01/1704874071_1704792632_ned3sqyqagaacdq6yybp9zhnzfr.jpg'),
       (23, 'Татусів вікенд', 'Комедія', 5.8, 2023, 'https://uakino.me/uploads/posts/2023-06/1687320553_1687320508_xvwr8f4uenu1yiujmy2azpz8f0q.jpg'),
       (24, 'Шоу Трумена', 'Комедія', 8.2, 1998, 'https://uakino.me/uploads/posts/2022-04/1649004750_11.jpg'),
       (25, 'Людина-павук. Додому шляху нема', 'Фантастика', 8.2, 2021, 'https://uakino.me/uploads/posts/2022-02/1643749420_11.jpg'),
       (26, 'Зоряні війни: Нова надія', 'Фантастика', 8.6, 1977, 'https://uakino.me/uploads/posts/2024-08/novanadiia.jpg'),
       (27, 'Месники: Завершення', 'Фантастика', 8.4, 2019, 'https://uakino.me/uploads/posts/2019-06/1559467680-1.jpg'),
       (28, 'Матриця', 'Фантастика', 8.7, 1999, 'https://uakino.me/uploads/post/The%20Matrix/oiQNhGHZ4Zg3fZXMZqf20vzaeuI.jpg'),
       (29, 'Їжак Сонік 2', 'Фантастика', 6.5, 2022, 'https://uakino.me/uploads/posts/2022-05/1651953253_1651953310_u18woiflijebljxabfajbpvsjch.jpg'),
       (30, 'Термінатор', 'Фантастика', 8.0, 1984, 'https://uakino.me/uploads/posts/2018-06/1528582512_1.jpg'),
       (31, 'Той, що біжить лабіринтом', 'Фантастика', 6.8, 2014, 'https://uakino.me/uploads/post/The%20Maze%20Runner/9m7KN4JITRyyW0HrKG9OZZ1VWpL.jpg'),
       (32, 'Вартові галактики 3', 'Фантастика', 8.2, 2023, 'https://uakino.me/uploads/posts/2023-07/1688714084_11.jpg'),
       (33, 'Хрещений батько', 'Кримінал', 9.2, 1972, 'https://uakino.me/uploads/posts/2023-11/1700406902_2302111503461710_f0_0.jpg'),
       (34, 'Вовк з Волл Стріт', 'Кримінал', 8.2, 2013, 'https://uakino.me/uploads/post/The%20Wolf%20of%20Wall%20Street/rPxnNuXVopllvzluQXll3DGsVp5.jpg'),
       (35, 'Бетмен', 'Кримінал', 8.3, 2022, 'https://uakino.me/uploads/posts/2022-04/1650448588_w1500_50374297.jpg'),
       (36, 'Смерть на Нілі', 'Кримінал', 6.3, 2022, 'https://uakino.me/uploads/posts/2022-03/1648463075_1648462891_af5cevgblxapxqmsvenqqfeeirv.jpg'),
       (37, 'Джокер', 'Кримінал', 8.4, 2019, 'https://uakino.me/uploads/posts/2019-10/157147479435_joker.jpg'),
       (38, 'Гнів людський', 'Кримінал', 7.1, 2021, 'https://uakino.me/uploads/posts/2021-05/1622393152_1622393019_5lozprssoj5ahw3a1yxbalx6dgr.jpg'),
       (39, 'Впіймай мене, якщо зможеш', 'Кримінал', 8.1, 2002, 'https://uakino.me/uploads/post/Catch%20Me%20If%20You%20Can/m6le1aiSTgr3VGXzCocbHvkaTca.jpg'),
       (40, 'Швидкісний поїзд', 'Кримінал', 7.5, 2022, 'https://uakino.me/uploads/mini/poster/64/51c8d751f4dec3c29f8b822789b2a5.webp');

INSERT INTO app_user (id, name, username, mail, password)
VALUES  (1, 'Дмитро', 'dimonchik', 'dimaglad@gmail.com', 'dimonchik098'),
        (2, 'Анастасія', 'nastyamk', 'nastyamakarova@gmail.com', 'nastyamk765'),
        (3, 'Володимир', 'vovan', 'vovavovik@gmail.com', 'vovan432');

INSERT INTO user_viewed_movies (user_viewed_movies_id, user_id, movie_id)
VALUES (1, 1, 25),
       (2, 1, 28),
       (3, 1, 40),
       (4, 1, 2),
       (5, 1, 30),
       (6, 2, 16),
       (7, 2, 23),
       (8, 2, 15),
       (9, 2, 10),
       (10, 2, 7),
       (11, 3, 21),
       (12, 3, 17),
       (13, 3, 34),
       (14, 3, 20),
       (15, 3, 4);
# 'Людина-павук. Додому шляху нема, Матриця, Швидкісний поїзд, Джентльмени, Термінатор',
# 'Зоряні війни: Нова надія, Месники: Завершення, Матриця, Їжак Сонік 2, Термінатор, Той, що біжить лабіринтом, Вартові галактики 3'

# 'Зелена миля, Татусів вікенд, Обдарована, Форрест Ґамп, Реальна сталь',
# 'Інтерстеллар, Форрест Ґамп, Бійцівський клуб, Титанік, Список Шиндлера, Втеча з Шоушенка, Обдарована'

# 'Пірати Карибського моря: Помста Салазара, Сам удома, Вовк з Волл Стріт, Безславні виродки, Дюна',
# 'Сам удома, Джуманджі: Поклик джунглів, Погані хлопці: Все або нічого, Безславні виродки, Сімейний план, Татусів вікенд, Шоу Трумена'