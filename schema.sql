CREATE TABLE label
(
    id    SERIAL PRIMARY KEY,
    title VARCHAR(100),
    color VARCHAR(100)
)

CREATE TABLE book
(
    id           SERIAL PRIMARY KEY,
    publish_date DATE,
    archived     BOOLEAN,
    publisher    VARCHAR(100),
    cover_state  VARCHAR(50),
    label_id     INTEGER REFERENCES label (id)
)

CREATE TABLE genre
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(100)
)

CREATE TABLE music_album
(
    id           SERIAL PRIMARY KEY,
    publish_date DATE,
    archived     BOOLEAN,
    on_spotify   BOOLEAN,
    genre_id     INTEGER REFERENCES genre (id)
)

CREATE TABLE author
(
    id         SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name  VARCHAR(100)
)

CREATE TABLE game
(
    id             SERIAL PRIMARY KEY,
    publish_date   DATE,
    archived       BOOLEAN,
    multiplayer    BOOLEAN,
    last_played_at DATE,
    author_id      INTEGER REFERENCES author (id)
)
