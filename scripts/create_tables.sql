USE film_program;

DROP TABLE IF EXISTS movie;
CREATE TABLE movie
(
    movie_id        int auto_increment primary key,
    title           varchar(100) not null,
    genre           varchar(50) not null,
    rating          decimal(2, 1) not null,
    release_year    year null,
    movie_src       varchar(255),
    check ((`rating` >= 0.0) and (`rating` <= 10.0))
);

DROP TABLE IF EXISTS app_user;
CREATE TABLE app_user
(
    id              int auto_increment primary key,
    name            varchar(50) null,
    username        varchar(50) null,
    mail            varchar(50) null,
    password        varchar(50) null
);

DROP TABLE IF EXISTS movie_recommendation;
CREATE TABLE movie_recommendation
(
    movie_recommendation_id int AUTO_INCREMENT PRIMARY KEY,
    user_id                 int NOT NULL,
    movie_id                int NOT NULL,
    FOREIGN KEY (user_id) REFERENCES app_user(id),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

DROP TABLE IF EXISTS user_viewed_movies;
CREATE TABLE user_viewed_movies
(
    user_viewed_movies_id int AUTO_INCREMENT PRIMARY KEY,
    user_id               int NOT NULL,
    movie_id              int NOT NULL,
    FOREIGN KEY (user_id) REFERENCES app_user(id),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);




