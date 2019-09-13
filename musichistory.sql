-- Query all of the entries in the Genre table - - this is how you run a query
select
    "GenreId",
    "Label"
from
    Genre;
-- another way to do it
select
    genreid,
    label
from
    Genre;
-- query song table for title,and song length
select
    "Title",
    "SongLength"
from
    Song;


-- Using the INSERT statement, add one of your favorite artists to the Artist table.

INSERT INTO Artist (ArtistId, ArtistName, YearEstablished)
VALUES (null, "Joe Lizzo", 2019);

-- Using the INSERT statement, add one, or more, albums by your artist to the Album table.

INSERT INTO Album (AlbumId, Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES (null, "Hybrid Theory", "1/1/2000", 2254, "IDK", 28, 2);

-- How to edit

UPDATE Album 
SET Label = "NSS Records"
WHERE AlbumId = 23;

-- How to delete

DELETE
FROM Album
WHERE AlbumId = 24;

DELETE
FROM Artist
WHERE ArtistId = 29;

-- Using the INSERT statement, add some songs that are on that album to the Song table.

Insert INTO Song (SongId, Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
Values (null, "Dirt On Your Shoulder", 852, "9/12/19", 13, 27, 23);

Insert INTO Song (SongId, Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
Values (null, "Outro", 405, "9/12/19", 13, 27, 23);

Insert INTO Song (SongId, Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
Values (null, "Can I say less", 1500, "9/12/19", 13, 27, 23);

-- Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.

SELECT Album.Title AS "Album Title" , Song.Title AS "Song Title" FROM Album LEFT JOIN SONG ON Song.AlbumId = Album.AlbumId
WHERE Song.Title = "Dirt Off Your Shoulder";

SELECT a.Title AS "Album Title" , s.Title AS "Song Title" FROM Album a LEFT JOIN SONG s ON s.AlbumId = a.AlbumId
WHERE s.Title = "Dirt On Your Shoulder";

--Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT Count(SongId), AlbumId
From Song
GROUP BY AlbumId;


--Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

SELECT Count(SongId), ArtistId
From Song
GROUP BY ArtistId;

--Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

SELECT COUNT(SongId), GenreId
From Song
GROUP BY GenreId;

--Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.

SELECT MAX(AlbumLength), Title
FROM Album;

--Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.

SELECT Album.Title AS "Album Title", Song.Title AS "Song Title", MAX(Song.SongLength) AS "Max Song Length"
FROM Song
INNER JOIN Album On Song.AlbumId = Album.AlbumId;

SELECT * FROM Album;