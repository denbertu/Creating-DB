  SELECT track_name, duration
    FROM tracks
ORDER BY duration DESC LIMIT 1;

  SELECT track_name, duration
    FROM tracks
   WHERE duration >= 210;

  SELECT collection_name
    FROM collections
   WHERE year BETWEEN 2018 AND 2020;

  SELECT *
    FROM artists
   WHERE artist_name NOT LIKE '% %';

  SELECT track_name
    FROM tracks
   WHERE STRING_TO_ARRAY(LOWER(track_name), ' ') && array['my'];

  SELECT track_name
    FROM tracks
   WHERE 'my' = ANY(STRING_TO_ARRAY(LOWER(track_name), ' '));

  SELECT track_name
    FROM tracks
   WHERE track_name ILIKE 'my %'
      OR track_name ILIKE '% my'
      OR track_name ILIKE '% my %'
      OR track_name ILIKE 'my';
