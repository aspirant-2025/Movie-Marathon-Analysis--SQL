# Movie-Marathon-Analysis--SQL
To understand user watch patterns for movies, how many movies a user watched , total duration etc... for a streaming platform using SQL.
Contains SQL scripts created using MySQL Workbench.  
It includes schema setup, sample data and an example analysis query that calculates per-user movies watched and total watch duration.

#sample data
table 1:Movies 
o movie_id (INT, PRIMARY KEY) 
o title (VARCHAR) 
o genre (VARCHAR) 
o duration_minutes (INT)

table2: Watchhistory
o watch_id (INT, PRIMARY KEY) 
o user_id (INT) 
o movie_id (INT, FOREIGN KEY references Movies.movie_id) 
o watch_date (DATE)

• retrieved the user_id, the total number of distinct movies_watched, and the total_watch_duration_minutes for each user. 
• included users who have watched at least 2 distinct movies. 
• Ordered the results primarily by total_watch_duration_minutes in descending order, and then by user_id in ascending order. 


