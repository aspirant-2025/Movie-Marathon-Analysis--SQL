create schema model1;
use model1;

CREATE TABLE Movies(MOVIE_ID INT PRIMARY KEY , TITLE VARCHAR(100) ,GENRE VARCHAR(50) ,DURATION_MINUTES INT);
SELECT * FROM Movies;

INSERT INTO Movies(MOVIE_ID , TITLE , GENRE , DURATION_MINUTES) VALUES 
(101 ,'The Great Adventure', ' Action' , 120) ,
(102,' Romantic Evening', 'Romance', 90 ),
(103,' Sci-Fi Future', 'Sci-Fi', 150 ),
(104 ,'Comedy Hour', 'Comedy',  80 ),
(105,' Drama Queen', 'Drama', 110);

CREATE TABLE WatchHistory(watch_id INT PRIMARY KEY , user_id INT , movie_id INT , watch_date DATE , FOREIGN KEY(movie_id) REFERENCES Movies(MOVIE_ID));
INSERT INTO  WatchHistory (watch_id, user_id, movie_id, watch_date) VALUES
(1, 1, 101, '2024-01-05'),
(2, 2, 102, '2024-01-06'),
(3, 1 ,103 ,'2024-01-07'),
(4, 3, 101,' 2024-01-08'), 
(5, 2, 101,' 2024-01-09'),
(6, 1, 102,' 2024-01-10'), 
(7, 4, 104,' 2024-01-11'), 
(8, 3, 105,' 2024-01-12'), 
(9, 2, 105,' 2024-01-13'); 

SELECT * FROM Movies;
SELECT * FROM WatchHistory;



SELECT 
    wh.user_id,
    COUNT(DISTINCT wh.movie_id) AS movies_watched,
    SUM(m.duration_minutes) AS total_watch_duration_minutes
FROM 
    WatchHistory wh
JOIN 
    Movies m ON wh.movie_id = m.movie_id
GROUP BY 
    wh.user_id
HAVING 
    COUNT(DISTINCT wh.movie_id) >= 2
ORDER BY 
    total_watch_duration_minutes DESC,
    wh.user_id ASC;