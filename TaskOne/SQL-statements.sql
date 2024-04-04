---1. Return the artist with the most number of albums

select artist_id, COUNT(*) AS num_albums
from album
group by artist_id
order by count(*) desc
limit 1
;
select * from artist where artist_id=90;

---------------------------------------------
--2. Return the top three genres found in the dataset in descending order

select genre_id, COUNT(*) AS num_tracks
from track
group by genre_id
order by num_tracks DESC
limit 1;
select name from genre where genre_id=1;

---------------------------------------------
--3.Return the number of tracks and average run time for each media type

select 
t.media_type_id,
m.name as media_type_name,
count(*) as num_tracks,
avg(milliseconds) as avg_runtime from track t
join media_type m on t.media_type_id=m.media_type_id
group by t.media_type_id, m.name
order by t.media_type_id;

---------------------------------------------