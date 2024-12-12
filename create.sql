CREATE TABLE IF NOT EXISTS genres(
    PRIMARY KEY (genre_id),
    genre_id   INT         NOT NULL,
    genre_name VARCHAR(50) NOT NULL
    );

CREATE TABLE IF NOT EXISTS artists(
    PRIMARY KEY (artist_id),
    artist_id   INT         NOT NULL,
    artist_name VARCHAR(50) NOT NULL
    );

CREATE TABLE IF NOT EXISTS genre_artist(
    genre_id  INT,
    artist_id INT,
    PRIMARY KEY (genre_id, artist_id),
    FOREIGN KEY (genre_id)  REFERENCES genres(genre_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
    );

CREATE TABLE IF NOT EXISTS albums(
    PRIMARY KEY (album_id),
    album_id   INT          NOT NULL,
    album_name VARCHAR(50)  NOT NULL,
    year       SMALLINT     NOT NULL,
                            CONSTRAINT year_range
                            CHECK(year > 1900)
    );

CREATE TABLE IF NOT EXISTS album_artist(
    album_id  INT,
    artist_id INT,
    PRIMARY KEY (album_id, artist_id),
    FOREIGN KEY (album_id) REFERENCES albums(album_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
    );

CREATE TABLE IF NOT EXISTS tracks(
    PRIMARY KEY (track_id),
    track_id   INT         NOT NULL,
    track_name VARCHAR(50) NOT NULL,
    duration   INT         NOT NULL,
    album_id   INT,
    FOREIGN KEY (album_id) REFERENCES albums(album_id)
    );

CREATE TABLE IF NOT EXISTS collections(
    PRIMARY KEY (collection_id),
    collection_id   INT         NOT NULL,
    collection_name VARCHAR(50) NOT NULL,
    year            SMALLINT    NOT NULL,
                                CONSTRAINT year_range
                                CHECK(year > 1900)
    );

CREATE TABLE IF NOT EXISTS tracks_collections(
    track_id      INT,
    collection_id INT,
    PRIMARY KEY (track_id, collection_id),
    FOREIGN KEY (track_id)      REFERENCES tracks(track_id),
    FOREIGN KEY (collection_id) REFERENCES collections(collection_id)
    );

