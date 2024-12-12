  SELECT genre_id, COUNT(artist_id) AS number_of_artists
    FROM genre_artist
GROUP BY genre_id;

  SELECT album_id, COUNT(track_id) AS number_of_tracks
    FROM tracks
   WHERE album_id IN 
         (SELECT album_id 
            FROM albums
           WHERE year BETWEEN 2019 AND 2020) 
GROUP BY album_id;

  SELECT album_id, AVG(duration) AS tracks_average_duration
    FROM tracks
GROUP BY album_id;

  SELECT artist_id
    FROM album_artist
   WHERE album_id NOT IN 
         (SELECT album_id
            FROM albums
           WHERE year = 2020);

  SELECT DISTINCT collection_id
    FROM tracks_collections
   WHERE track_id IN 
         (SELECT track_id
            FROM tracks
           WHERE album_id = 
                 (SELECT album_id
                    FROM album_artist
                   WHERE artist_id = 3))

