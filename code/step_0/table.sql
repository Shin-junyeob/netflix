-- Create table for Netflix movies data
CREATE TABLE movies (
    show_id INT PRIMARY KEY,
    type CHAR(5),
    title VARCHAR(255),
    director VARCHAR(255),
    cast VARCHAR(255),
    country VARCHAR(255),
    date_added DATE,
    release_year YEAR,
    rating FLOAT,
    duration VARCHAR(10) NULL,
    genres VARCHAR(255),
    language CHAR(2),
    description VARCHAR(1023),
    popularity FLOAT,
    vote_count INT,
    vote_average FLOAT,
    budget INT,
    revenue BIGINT
);

-- Create table for Netflix tvshows data
CREATE TABLE tvshows (
    show_id INT,
    type CHAR(7),
    title VARCHAR(255),
    director VARCHAR(255),
    cast VARCHAR(255),
    country VARCHAR(255),
    date_added DATE,
    release_year YEAR,
    rating FLOAT,
    duration VARCHAR(10),
    genres VARCHAR(255),
    language CHAR(2),
    description VARCHAR(2047),
    popularity FLOAT,
    vote_count SMALLINT,
    vote_average FLOAT,
    PRIMARY KEY (show_id, duration)
);

CREATE TABLE metadata_movies (
    show_id INT,
    genres VARCHAR(255),
    FOREIGN KEY (show_id) REFERENCES movies(show_id)
);

CREATE TABLE metadata_tvshows (
    show_id INT,
    genres VARCHAR(255),
    FOREIGN KEY (show_id) REFERENCES tvshows(show_id)
);