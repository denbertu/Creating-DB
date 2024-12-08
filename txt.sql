CREATE TABLE genres(
    genre_id INT PRIMARY KEY NOT NULL,
    genre_name VARCHAR(50) NOT NULL
    );

CREATE TABLE artists(
    artist_id INT PRIMARY KEY NOT NULL,
    artist_name VARCHAR(50) NOT NULL
    );

CREATE TABLE genre_artist(
    genre_id INT,
    artist_id INT,
    PRIMARY KEY (genre_id, artist_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
    );

CREATE TABLE albums(
    album_id INT PRIMARY KEY NOT NULL,
    album_name VARCHAR(50) NOT NULL,
    year SMALLINT NOT NULL CHECK (year > 1900)
    );

CREATE TABLE album_artist(
    album_id INT,
    artist_id INT,
    PRIMARY KEY (album_id, artist_id),
    FOREIGN KEY (album_id) REFERENCES albums(album_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
    );

CREATE TABLE tracks(
    track_id INT PRIMARY KEY NOT NULL,
    track_name VARCHAR(50) NOT NULL,
    album_id INT UNIQUE,
    duration TIME NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albums(album_id)
    );

CREATE TABLE collections(
    collection_id INT PRIMARY KEY NOT NULL,
    collection_name VARCHAR(50) NOT NULL,
    year SMALLINT NOT NULL CHECK (year > 1900)
    );

CREATE TABLE tracks_collections(
    track_id INT,
    collection_id INT,
    PRIMARY KEY (track_id, collection_id),
    FOREIGN KEY (track_id) REFERENCES tracks(track_id),
    FOREIGN KEY (collection_id) REFERENCES collections(collection_id)
    );

