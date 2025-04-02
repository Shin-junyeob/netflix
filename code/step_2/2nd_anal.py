genres = ['Action', 'Adventure', 'Animation', 'Comedy', 'Crime', 'Documentary', 'Drama', 'Family', 'Fantasy', 'History', 'Horror', 'Music', 'Mystery', 'Romance', 'Science Fiction', 'TV Movie', 'Thriller', 'War', 'Western']

print("""(
    SELECT 'country' AS country, 'genre' AS gerne, 'count' AS count
)""")
for genre in genres:
    print(f"""UNION ALL
(
    SELECT country, '{genre}' AS genre, COUNT(*) AS count
    FROM movies
    WHERE country IN ('United States of America', 'JAPAN', 'SOUTH KOREA', 'FRANCE', 'UNITED KINGDOM')
    AND genres LIKE '%{genre}%'
    GROUP BY country
)""")
    
print("""
INTO OUTFILE 'C:/Temp/2nd_anal.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\\n';""")