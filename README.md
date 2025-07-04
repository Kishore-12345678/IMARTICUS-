# 📊 SQL Data Analysis Projects

This repository contains structured SQL queries for analyzing real-world datasets across four different domains:

- 🎬 Netflix Movie Dataset
- 🚴 Bike Sales in India
- 💊 Supplement Sales
- 🎓 World University Rankings

Each section contains insights that showcase practical SQL skills such as filtering, grouping, aggregation, ordering, and joins (if applicable).

---

## 🎬 Netflix Movie Dataset

📁 **Database**: `net_flix`  
📊 **Table**: `net_flix`

### 🔍 Key Insights & Queries

1. List of all movie titles and genres  
2. Average rating per genre  
3. Highest-rated movie  
4. Movies after 2015 with rating > 8  
5. Count of movies per genre  
6. Most reviewed movie  
7. Movie with the most impactful scene  
8. Movies recommended by friends  
9. Highly rated dramas (>8)  
10. Suggestion percentage per movie  
11. Top-rated movies discovered via Netflix  
12. Most common impactful scene runtime  
13. Movies rated between 7–8 from social media  
14. Movies with >80% suggestion rate  
15. Movies from 2017–2019 with rating ≥ 8  

📌 This analysis focuses on user behavior, genres, and discovery channels.

---

## 🚴 Bike Sales India Analysis

📁 **Database**: `bike_details`  
📊 **Table**: `bike_sales_india`

### 🔍 Key Insights & Queries

1. Bikes with resale price > ₹150,000  
2. Electric bikes registered in 2023  
3. Count of bikes by fuel type  
4. Top 5 most expensive bikes  
5. Average mileage by fuel type  
6. Karnataka bikes with engine > 700cc  
7. Resale price difference for each bike  
8. Bike count per city tier  
9. Bikes with expired or no insurance  
10. Vehicle with highest mileage  
11. Average resale price by owner type  
12. Dealer bikes manufactured before 2020  
13. Royal Enfield bikes with mileage > 50 km/l  
14. Resale price < 50% of original  
15. Number of bikes registered per year  

📌 This helps understand pricing trends, insurance coverage, and regional bike preferences.

---

## 💊 Supplement Sales Analysis

📁 **Database**: `supplements`  
📊 **Table**: `supplement_sales_weekly_expanded`

### 🔍 Key Insights & Queries

1. Total revenue generated  
2. Top 5 products by units sold  
3. Revenue by country  
4. Revenue per category  
5. Average discount by platform  
6. Return rate per product  
7. Products with > 2 returns  
8. Average price by category  
9. Highest revenue product  
10. Revenue comparison across dates  
11. Units sold per date  
12. Revenue from Amazon only  
13. Discounted revenue after applying discount  
14. Category with highest returns  
15. Products with discount > 20%  

📌 Focus on pricing strategy, platform performance, and return analysis.

---

## 🎓 World University Ranking Analysis

📁 **Database**: `world_university_ranking`  
📊 **Table**: `world_university`

### 🔍 Key Insights & Queries

1. Top 5 universities by overall score  
2. Universities in Asia  
3. Highest employer reputation score  
4. Universities with academic rep score = 100  
5. Rank improvements (2024 → 2025)  
6. Rank drops (2024 → 2025)  
7. Count of universities by region  
8. Faculty-student score > 95  
9. Top 5 by citations per faculty  
10. Universities with >90 in international faculty & students score  
11. Average score by region  
12. Universities with “Technology” in name  
13. Sustainability score < 50  
14. Count by FOCUS category  
15. Employer rep score: Europe vs. Americas  

📌 Academic trends, global rankings, and international diversity insights are revealed here.

---

## 🛠️ Tools Used

- MySQL
- SQL Workbench / DBeaver / phpMyAdmin
- GitHub for version control

---

## 📬 How to Use

1. Create each database using:
    ```sql
    CREATE DATABASE net_flix;
    CREATE DATABASE bike_details;
    CREATE DATABASE supplements;
    CREATE DATABASE world_university_ranking;
    ```

2. Import the respective datasets into your SQL environment.
3. Run the queries provided in this repo to perform analysis.

---

## 🤝 Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

---

## 📌 Author

Made with 💻 by Kishore  
Feel free to fork, use, and ⭐ star the repo!

