(
    SELECT 'genre' AS genre, 'release_year' AS release_year, 'BFI' AS BFI, 'count' AS count 
)
UNION ALL
(
SELECT 'Adventure' AS genre, release_year, AVG(LOG(1 + revenue) * LOG(1 + vote_count)) AS BFI, COUNT(*) AS count
FROM movies
WHERE genres LIKE '%Adventure%'
AND release_year IS NOT NULL
AND revenue IS NOT NULL AND vote_count IS NOT NULL
GROUP BY release_year
)
UNION ALL
(
SELECT 'Animation' AS genre, release_year, AVG(LOG(1 + revenue) * LOG(1 + vote_count)) AS BFI, COUNT(*) AS count
FROM movies
WHERE genres LIKE '%Animation%'
AND release_year IS NOT NULL
AND revenue IS NOT NULL AND vote_count IS NOT NULL
GROUP BY release_year
)
UNION ALL
(
SELECT 'Comedy' AS genre, release_year, AVG(LOG(1 + revenue) * LOG(1 + vote_count)) AS BFI, COUNT(*) AS count
FROM movies
WHERE genres LIKE '%Comedy%'
AND release_year IS NOT NULL
AND revenue IS NOT NULL AND vote_count IS NOT NULL
GROUP BY release_year
)
UNION ALL
(
SELECT 'Crime' AS genre, release_year, AVG(LOG(1 + revenue) * LOG(1 + vote_count)) AS BFI, COUNT(*) AS count
FROM movies
WHERE genres LIKE '%Crime%'
AND release_year IS NOT NULL
AND revenue IS NOT NULL AND vote_count IS NOT NULL
GROUP BY release_year
)
UNION ALL
(
SELECT 'Documentary' AS genre, release_year, AVG(LOG(1 + revenue) * LOG(1 + vote_count)) AS BFI, COUNT(*) AS count
FROM movies
WHERE genres LIKE '%Documentary%'
AND release_year IS NOT NULL
AND revenue IS NOT NULL AND vote_count IS NOT NULL
GROUP BY release_year
)
UNION ALL
(
SELECT 'Drama' AS genre, release_year, AVG(LOG(1 + revenue) * LOG(1 + vote_count)) AS BFI, COUNT(*) AS count
FROM movies
WHERE genres LIKE '%Drama%'
AND release_year IS NOT NULL
AND revenue IS NOT NULL AND vote_count IS NOT NULL
GROUP BY release_year
)
UNION ALL
(
SELECT 'Family' AS genre, release_year, AVG(LOG(1 + revenue) * LOG(1 + vote_count)) AS BFI, COUNT(*) AS count
FROM movies
WHERE genres LIKE '%Family%'
AND release_year IS NOT NULL
AND revenue IS NOT NULL AND vote_count IS NOT NULL
GROUP BY release_year
)
UNION ALL
(
SELECT 'Fantasy' AS genre, release_year, AVG(LOG(1 + revenue) * LOG(1 + vote_count)) AS BFI, COUNT(*) AS count
FROM movies
WHERE genres LIKE '%Fantasy%'
AND release_year IS NOT NULL
AND revenue IS NOT NULL AND vote_count IS NOT NULL
GROUP BY release_year
)
UNION ALL
(
SELECT 'History' AS genre, release_year, AVG(LOG(1 + revenue) * LOG(1 + vote_count)) AS BFI, COUNT(*) AS count
FROM movies
WHERE genres LIKE '%History%'
AND release_year IS NOT NULL
AND revenue IS NOT NULL AND vote_count IS NOT NULL
GROUP BY release_year
)
UNION ALL
(
SELECT 'Horror' AS genre, release_year, AVG(LOG(1 + revenue) * LOG(1 + vote_count)) AS BFI, COUNT(*) AS count
FROM movies
WHERE genres LIKE '%Horror%'
AND release_year IS NOT NULL
AND revenue IS NOT NULL AND vote_count IS NOT NULL
GROUP BY release_year
)
UNION ALL
(
SELECT 'Music' AS genre, release_year, AVG(LOG(1 + revenue) * LOG(1 + vote_count)) AS BFI, COUNT(*) AS count
FROM movies
WHERE genres LIKE '%Music%'
AND release_year IS NOT NULL
AND revenue IS NOT NULL AND vote_count IS NOT NULL
GROUP BY release_year
)
UNION ALL
(
SELECT 'Mystery' AS genre, release_year, AVG(LOG(1 + revenue) * LOG(1 + vote_count)) AS BFI, COUNT(*) AS count
FROM movies
WHERE genres LIKE '%Mystery%'
AND release_year IS NOT NULL
AND revenue IS NOT NULL AND vote_count IS NOT NULL
GROUP BY release_year
)
UNION ALL
(
SELECT 'Romance' AS genre, release_year, AVG(LOG(1 + revenue) * LOG(1 + vote_count)) AS BFI, COUNT(*) AS count
FROM movies
WHERE genres LIKE '%Romance%'
AND release_year IS NOT NULL
AND revenue IS NOT NULL AND vote_count IS NOT NULL
GROUP BY release_year
)
UNION ALL
(
SELECT 'Science Fiction' AS genre, release_year, AVG(LOG(1 + revenue) * LOG(1 + vote_count)) AS BFI, COUNT(*) AS count
FROM movies
WHERE genres LIKE '%Science Fiction%'
AND release_year IS NOT NULL
AND revenue IS NOT NULL AND vote_count IS NOT NULL
GROUP BY release_year
)
UNION ALL
(
SELECT 'TV Movie' AS genre, release_year, AVG(LOG(1 + revenue) * LOG(1 + vote_count)) AS BFI, COUNT(*) AS count
FROM movies
WHERE genres LIKE '%TV Movie%'
AND release_year IS NOT NULL
AND revenue IS NOT NULL AND vote_count IS NOT NULL
GROUP BY release_year
)
UNION ALL
(
SELECT 'Thriller' AS genre, release_year, AVG(LOG(1 + revenue) * LOG(1 + vote_count)) AS BFI, COUNT(*) AS count
FROM movies
WHERE genres LIKE '%Thriller%'
AND release_year IS NOT NULL
AND revenue IS NOT NULL AND vote_count IS NOT NULL
GROUP BY release_year
)
UNION ALL
(
SELECT 'War' AS genre, release_year, AVG(LOG(1 + revenue) * LOG(1 + vote_count)) AS BFI, COUNT(*) AS count  
FROM movies
WHERE genres LIKE '%War%'
AND release_year IS NOT NULL
AND revenue IS NOT NULL AND vote_count IS NOT NULL
GROUP BY release_year
)
UNION ALL
(
SELECT 'Western' AS genre, release_year, AVG(LOG(1 + revenue) * LOG(1 + vote_count)) AS BFI, COUNT(*) AS count
FROM movies
WHERE genres LIKE '%Western%'
AND release_year IS NOT NULL
AND revenue IS NOT NULL AND vote_count IS NOT NULL
GROUP BY release_year
)
INTO OUTFILE 'C:/Temp/3rd_anal.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';