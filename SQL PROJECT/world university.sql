create database world_university_ranking;
use world_university_ranking;
SELECT * FROM world_university_ranking.world_university;

 #1. List the top 5 universities based on Overall Score
SELECT Institution_Name, Overall_Score
FROM world_university_ranking.world_university
ORDER BY Overall_Score DESC
LIMIT 5;

# 2. Find universities located in 'Asia' region
SELECT Institution_Name, Location, Region
FROM world_university_ranking.world_university
WHERE Region = 'Asia';

#3. Find the university with the highest Employer Reputation Score
SELECT Institution_Name, Employer_Reputation_Score
FROM world_university_ranking.world_university
ORDER BY Employer_Reputation_Score DESC
LIMIT 1;

#4. List universities where the Academic Reputation Score is 100
SELECT Institution_Name, Academic_Reputation_Score
FROM world_university_ranking.world_university
WHERE Academic_Reputation_Score = 100;

#5. Find universities whose 2025 rank improved compared to 2024
SELECT Institution_Name, RANK_2025, RANK_2024
FROM world_university_ranking.world_university
WHERE RANK_2025 < RANK_2024;

# 6. Find universities that dropped in rank in 2025 compared to 2024
SELECT Institution_Name, RANK_2025, RANK_2024
FROM world_university_ranking.world_university
WHERE RANK_2025 > RANK_2024;

#7. Get a count of universities by Region
SELECT Region, COUNT(*) AS university_count
FROM world_university_ranking.world_university
GROUP BY Region;

# 8. List universities with a Faculty-Student Score above 95
SELECT Institution_Name, Faculty_Student_Score
FROM world_university_ranking.world_university
WHERE Faculty_Student_Score > 95;

# 9. Find top 5 universities with the highest Citations per Faculty Score
SELECT Institution_Name, Citations_per_Faculty_Score
FROM world_university_ranking.world_university
ORDER BY Citations_per_Faculty_Score DESC
LIMIT 5;

# 10. List universities where more than 90 in both International Faculty and International Students Score
SELECT Institution_Name, International_Faculty_Score, International_Students_Score
FROM world_university_ranking.world_university
WHERE International_Faculty_Score > 90 AND International_Students_Score > 90;

# 11. Get average Overall Score by Region
SELECT Region, AVG(Overall_Score) AS avg_score
FROM world_university_ranking.world_university
GROUP BY Region;

#12. Find universities with 'Technology' in the name
SELECT Institution_Name
FROM world_university_ranking.world_university
WHERE Institution_Name LIKE '%Technology%';

#13. Find universities with a Sustainability Score less than 50
SELECT Institution_Name, Sustainability_Score
FROM world_university_ranking.world_university
WHERE Sustainability_Score < 50;

#14. Find the number of universities for each 'FOCUS' category
SELECT FOCUS, COUNT(*) AS count
FROM world_university_ranking.world_university
GROUP BY FOCUS;

# 15. Compare average Employer Reputation Score between Europe and Americas
SELECT Region, AVG(Employer_Reputation_Score) AS avg_employer_score
FROM world_university_ranking.world_university
WHERE Region IN ('Europe', 'Americas')
GROUP BY Region;
