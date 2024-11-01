class UserGenre:
    def __init__(self, user_id, genre, genre_count):
        self.user_id = user_id
        self.genre = genre
        self.genre_count = genre_count

    def __repr__(self):
        return f"UserGenre(user_id={self.user_id}, genre='{self.genre}', genre_count={self.genre_count})"
