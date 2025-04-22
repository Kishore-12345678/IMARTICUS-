create database net_flix;
use net_flix;
SELECT * FROM net_flix.net_flix;

#1. List all movie titles and their genres.
SELECT `Movie Title`, Genre
FROM net_flix.net_flix;

#2. Find the average rating for each genre.
SELECT Genre, AVG(`Average Rating`) AS Average_Rating
FROM net_flix.net_flix
GROUP BY Genre;

#3. Which movie has the highest average rating?
SELECT `Movie Title`, `Average Rating`
FROM net_flix.net_flix
ORDER BY `Average Rating` DESC
LIMIT 1;

#4. List the movies released after 2015 with an average rating greater than 8.
SELECT `Movie Title`,`Release Year`, `Average Rating`
FROM net_flix.net_flix
WHERE `Release Year` > 2015 AND `Average Rating` > 8;

#5. Count the number of movies for each genre.
SELECT Genre, COUNT(*) AS Movie_Count
FROM net_flix.net_flix
GROUP BY Genre;

#6. Find the movie with the most reviews and display its title and number of reviews.
SELECT `Movie Title`,`Number of Reviews`
FROM net_flix.net_flix
ORDER BY `Number of Reviews` DESC
LIMIT 1;

#7. Which movie had the most impactful scene (based on "Minute of Life-Changing Insight")?
SELECT `Movie Title` Minute_of_Life_Changing_Insight
FROM net_flix.net_flix
ORDER BY Minute_of_Life_Changing_Insight DESC
LIMIT 1;

#8. Find all movies recommended by a friend and suggest them to a percentage of people.
SELECT `Movie Title`, `Suggested to Friends Family YN`, 
       `Suggested to Friends Family YN Percentage`
FROM net_flix.net_flix
WHERE How_Discovered = 'Friend suggested';

#9. List all movies with the genre 'Drama' and an average rating above 8.
SELECT `Movie Title`, `Average Rating`
FROM net_flix.net_flix
WHERE Genre = 'Drama' AND `Average Rating` > 8;

#10. Show the movie titles with their release year, and the percentage of people who suggested them to friends/family (rounded to 1 decimal place).
SELECT `Movie Title`, `Release Year`, 
       ROUND(`Suggested to Friends Family YN Percentage`, 1) AS Suggestion_Percentage
FROM net_flix.net_flix;

#11. Find the movies with a rating above 8 and were recommended via Netflix.
SELECT `Movie Title`, `Average Rating`, `How Discovered`
FROM net_flix.net_flix
WHERE `Average Rating` > 8 AND `How Discovered` LIKE '%Netflix%';

#12. What is the most common movie runtime, and how many movies have that runtime?
SELECT `Minute of Life Changing Insight`, COUNT(*) AS Movie_Count
FROM net_flix.net_flix
GROUP BY `Minute of Life Changing Insight`
ORDER BY Movie_Count DESC
LIMIT 1;

#13. Find all movies that have a rating between 7 and 8 and were discovered through social media.
SELECT `Movie Title`, `Average Rating`, `How Discovered`
FROM net_flix.net_flix
WHERE `Average Rating` BETWEEN 7 AND 8 AND `How Discovered` = 'Social media';

#14. List all movies where the suggestion rate to friends/family is greater than 80%.
SELECT `Movie Title` , `Suggested to Friends Family YN Percentage`
FROM net_flix.net_flix
WHERE `Suggested to Friends Family YN Percentage` > 80;

#15. Get a list of all movies released between 2017 and 2019 with an average rating of 8 or higher.
SELECT `Movie Title`,`Release Year`, `Average Rating`
FROM net_flix.net_flix
WHERE `Release Year` BETWEEN 2017 AND 2019 AND `Average Rating` >= 8;