select m.title, avg(r.rating) as averageRating
from movies m join ratings r on r.movieid = m.movieid
where r.rating >= 0
group by m.title
order by averageRating desc;

select m.title, sum(r.rating) as ratingTotal
from movies m
join ratings r on m.movieid = r.movieid
group by m.title;

select g.genres, count(mg.movieid) as moviesPer
from genre g
join movie_genre mg on g.id = mg.genre_id
group by g.genres;

select r.userid, avg(r.rating) as average_rating
from ratings r
group by r.userid
order by r.userid asc;

-

select r.userid, avg(r.rating) as average_rating
from ratings r
group by r.userid
order by average_rating desc
limit 1;

select r.userid, avg(r.rating) as average_rating
from ratings r
group by r.userid
having count(r.userid) > 50
order by average_rating desc
limit 1;