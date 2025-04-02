genres = ['Action', 'Adventure', 'Animation', 'Comedy', 'Crime', 'Documentary', 'Drama', 'Family', 'Fantasy', 'History', 'Horror', 'Music', 'Mystery', 'Romance', 'Science Fiction', 'TV Movie', 'Thriller', 'War', 'Western']

print("""(
    SELECT 'genre' AS genre, 'release_year' AS release_year, 'BFI' AS BFI, 'count' AS count
)""")

for genre in genres:
    if genre != 'Action':
        print(f"""UNION ALL
(
SELECT '{genre}' AS genre, release_year, AVG(LOG(1 + revenue) * LOG(1 + vote_count)) AS BFI, COUNT(*) AS count
FROM movies
WHERE genres LIKE '%{genre}%'
AND release_year IS NOT NULL
AND revenue IS NOT NULL AND vote_count IS NOT NULL
GROUP BY release_year
)""")

print("""
INTO OUTFILE 'C:/Temp/3rd_anal.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\\n';""")