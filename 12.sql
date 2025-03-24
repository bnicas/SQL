SELECT title FROM movies WHERE movies.id IN
(

	SELECT stars.movie_id FROM stars
	JOIN movies ON stars.movie_id = movies.id
	JOIN people ON people.id =  stars.person_id
	WHERE people.name = "Johnny Depp"

	INTERSECT

	SELECT stars.movie_id FROM stars
	JOIN movies ON stars.movie_id = movies.id
	JOIN people ON people.id =  stars.person_id
	WHERE people.name = "Helena Bonham Carter"

)