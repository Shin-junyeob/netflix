SELECT country, 'Action' AS genre, COUNT(*) AS count
FROM movies
WHERE country IN ('United States of America', 'JAPAN', 'SOUTH KOREA', 'FRANCE', 'UNITED KINGDOM')
AND genres LIKE '%Action%'
GROUP BY country
UNION ALL

SELECT country, 'Adventure' AS genre, COUNT(*) AS count
FROM movies
WHERE country IN ('United States of America', 'JAPAN', 'SOUTH KOREA', 'FRANCE', 'UNITED KINGDOM')
AND genres LIKE '%Adventure%'
GROUP BY country
UNION ALL

SELECT country, 'Animation' AS genre, COUNT(*) AS count
FROM movies
WHERE country IN ('United States of America', 'JAPAN', 'SOUTH KOREA', 'FRANCE', 'UNITED KINGDOM')
AND genres LIKE '%Animation%'
GROUP BY country
UNION ALL

SELECT country, 'Comedy' AS genre, COUNT(*) AS count
FROM movies
WHERE country IN ('United States of America', 'JAPAN', 'SOUTH KOREA', 'FRANCE', 'UNITED KINGDOM')
AND genres LIKE '%Comedy%'
GROUP BY country
UNION ALL

SELECT country, 'Crime' AS genre, COUNT(*) AS count
FROM movies
WHERE country IN ('United States of America', 'JAPAN', 'SOUTH KOREA', 'FRANCE', 'UNITED KINGDOM')
AND genres LIKE '%Crime%'
GROUP BY country
UNION ALL

SELECT country, 'Documentary' AS genre, COUNT(*) AS count
FROM movies
WHERE country IN ('United States of America', 'JAPAN', 'SOUTH KOREA', 'FRANCE', 'UNITED KINGDOM')
AND genres LIKE '%Documentary%'
GROUP BY country
UNION ALL

SELECT country, 'Drama' AS genre, COUNT(*) AS count
FROM movies
WHERE country IN ('United States of America', 'JAPAN', 'SOUTH KOREA', 'FRANCE', 'UNITED KINGDOM')
AND genres LIKE '%Drama%'
GROUP BY country
UNION ALL

SELECT country, 'Family' AS genre, COUNT(*) AS count
FROM movies
WHERE country IN ('United States of America', 'JAPAN', 'SOUTH KOREA', 'FRANCE', 'UNITED KINGDOM')
AND genres LIKE '%Family%'
GROUP BY country
UNION ALL

SELECT country, 'Fantasy' AS genre, COUNT(*) AS count
FROM movies
WHERE country IN ('United States of America', 'JAPAN', 'SOUTH KOREA', 'FRANCE', 'UNITED KINGDOM')
AND genres LIKE '%Fantasy%'
GROUP BY country
UNION ALL

SELECT country, 'History' AS genre, COUNT(*) AS count
FROM movies
WHERE country IN ('United States of America', 'JAPAN', 'SOUTH KOREA', 'FRANCE', 'UNITED KINGDOM')
AND genres LIKE '%History%'
GROUP BY country
UNION ALL

SELECT country, 'Horror' AS genre, COUNT(*) AS count
FROM movies
WHERE country IN ('United States of America', 'JAPAN', 'SOUTH KOREA', 'FRANCE', 'UNITED KINGDOM')
AND genres LIKE '%Horror%'
GROUP BY country
UNION ALL

SELECT country, 'Music' AS genre, COUNT(*) AS count
FROM movies
WHERE country IN ('United States of America', 'JAPAN', 'SOUTH KOREA', 'FRANCE', 'UNITED KINGDOM')
AND genres LIKE '%Music%'
GROUP BY country
UNION ALL

SELECT country, 'Mystery' AS genre, COUNT(*) AS count
FROM movies
WHERE country IN ('United States of America', 'JAPAN', 'SOUTH KOREA', 'FRANCE', 'UNITED KINGDOM')
AND genres LIKE '%Mystery%'
GROUP BY country
UNION ALL

SELECT country, 'Romance' AS genre, COUNT(*) AS count
FROM movies
WHERE country IN ('United States of America', 'JAPAN', 'SOUTH KOREA', 'FRANCE', 'UNITED KINGDOM')
AND genres LIKE '%Romance%'
GROUP BY country
UNION ALL

SELECT country, 'Science Fiction' AS genre, COUNT(*) AS count
FROM movies
WHERE country IN ('United States of America', 'JAPAN', 'SOUTH KOREA', 'FRANCE', 'UNITED KINGDOM')
AND genres LIKE '%Science Fiction%'
GROUP BY country
UNION ALL

SELECT country, 'TV Movie' AS genre, COUNT(*) AS count
FROM movies
WHERE country IN ('United States of America', 'JAPAN', 'SOUTH KOREA', 'FRANCE', 'UNITED KINGDOM')
AND genres LIKE '%TV Movie%'
GROUP BY country
UNION ALL

SELECT country, 'Thriller' AS genre, COUNT(*) AS count
FROM movies
WHERE country IN ('United States of America', 'JAPAN', 'SOUTH KOREA', 'FRANCE', 'UNITED KINGDOM')
AND genres LIKE '%Thriller%'
GROUP BY country
UNION ALL

SELECT country, 'War' AS genre, COUNT(*) AS count
FROM movies
WHERE country IN ('United States of America', 'JAPAN', 'SOUTH KOREA', 'FRANCE', 'UNITED KINGDOM')
AND genres LIKE '%War%'
GROUP BY country
UNION ALL

SELECT country, 'Western' AS genre, COUNT(*) AS count
FROM movies
WHERE country IN ('United States of America', 'JAPAN', 'SOUTH KOREA', 'FRANCE', 'UNITED KINGDOM')
AND genres LIKE '%Western%'
GROUP BY country
ORDER BY country DESC

INTO OUTFILE 'C:/Temp/2nd.anal.py'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';