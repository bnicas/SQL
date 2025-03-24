SELECT title FROM movies
JOIN ratings ON movies.id = ratings.movie_id WHERE movies.id IN
(

	SELECT stars.movie_id FROM stars
	JOIN movies ON stars.movie_id = movies.id
	JOIN people ON people.id =  stars.person_id
	WHERE people.name = "Chadwick Boseman"


)
ORDER BY rating DESC LIMIT 5