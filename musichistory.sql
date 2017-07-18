select *
from Genre;
select *
from Artist;
select *
from Album;
select *
from Song;

-- Query all of the entries in the Genre table
select g.Label, g.Genreid
from Genre g;

--Using the INSERT statement, add one of your favorite artists to the Artist table.
insert into Artist
values (null, "The Rolling Stones", 1963);
insert into Artist (ArtistName, YearEstablished)
values ("Big Scary", 2005);

--Using the INSERT statement, add one, or more, albums by your artist to the Album table.
insert into Album
values (null, "Four Seasons", 1971, 50, "Rolling Stones", 29, 2);

--Using the INSERT statement, add some songs that are on that album to the Song table.
insert into Song
values (null, "Tumblin Dice", 3, 1971, 2, 29, 26);

select Title
from Album
where artistid = 1
and Title = "Point of Entry";

select a.ArtistName, al.Title
from Artist a, Album al
where a.Artistid = al.Artistid
order by a.ArtistName desc;


--Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
select s.Title as "Song Title", al.Title as "Album Title", a.ArtistName
from Song s, Album al, Artist a
where s.AlbumId = al.AlbumId
and s.ArtistId = a.ArtistId;


select s.Title as "Song Title", al.Title as "Album Title", a.ArtistName
from Song s
left join Album al
on s.AlbumId = al.AlbumId
left join Artist a
on s.artistid = a.Artistid;


--Reminder: Direction of join matters. Try the following statements and see the difference in results.
--SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.AlbumId;
--SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.AlbumId;


--Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
select al.Title, count(s.AlbumId)
from Album al, Song s
where al.AlbumId = s.AlbumId
group by al.title;

-- or use: 
--left join Artist a
--on al.ArtistId = a.ArtistId


--Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

--Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

--Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.

--Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.

--Modify the previous query to also display the title of the album.