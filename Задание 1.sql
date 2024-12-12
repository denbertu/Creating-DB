INSERT INTO genres (genre_id, genre_name)
VALUES (1, 'genre 1'),
       (2, 'genre 2'),
       (3, 'genre 3');

INSERT INTO artists (artist_id, artist_name)
VALUES (1, 'artist 1'),
       (2, 'artist2'),
       (3, 'artist 3'),
       (4, 'artist4');

INSERT INTO albums (album_id, album_name, year)
VALUES (1, 'album 1', 2000),
       (2, 'album 2', 2020),
       (3, 'album 3', 2019),
       (4, 'album 4', 2018);

INSERT INTO tracks (track_id, track_name, duration, album_id)
VALUES (1, 'my track 1', '120', 2),
       (2, 'track 2', '300', 3), 
       (3, 'track 3', '240', 4),
       (4, 'track 4', '180', 1),
       (5, 'track 5', '360', 2),
       (6, 'track 6', '120', 1);

INSERT INTO collections (collection_id, collection_name, year)
VALUES (1, 'collection 1', 2017),
       (2, 'collection 2', 2020),
       (3, 'collection 3', 2019),
       (4, 'collection 4', 2018);

INSERT INTO genre_artist (genre_id, artist_id)
VALUES (1, 2),
       (3, 1),
       (2, 3),
       (1, 4);

INSERT INTO album_artist (album_id, artist_id)
VALUES (4, 2),
       (3, 1),
       (2, 3),
       (1, 4);

INSERT INTO tracks_collections (track_id, collection_id)
VALUES (4, 2),
       (6, 1),
       (3, 3),
       (5, 4),
       (2, 3),
       (1, 4);