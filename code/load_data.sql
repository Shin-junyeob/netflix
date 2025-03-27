-- Upload movies data into movies table
LOAD DATA LOCAL INFILE 'C:/Users/junyu/Desktop/work/Netflix/data/movies.csv'
INTO TABLE movies
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Upload movies data into tvshows table
LOAD DATA LOCAL INFILE 'C:/Users/junyu/Desktop/work/Netflix/data/tvshows.csv'
INTO TABLE tvshows
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;