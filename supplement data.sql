create database supplements;
use supplements;
SELECT * FROM supplements.supplement_sales_weekly_expanded;
# 1. Total Revenue Generated
SELECT SUM(Revenue) AS TotalRevenue
FROM supplements.supplement_sales_weekly_expanded;

# 2. Top 5 Best-Selling Products by Units Sold
SELECT `Product Name`, SUM(`Units Sold`) AS TotalUnitsSold
FROM supplements.supplement_sales_weekly_expanded
GROUP BY `Product Name`
ORDER BY TotalUnitsSold DESC
LIMIT 5;

# 3. Revenue by Country
SELECT Location, SUM(Revenue) AS RevenueByCountry
FROM supplements.supplement_sales_weekly_expanded
GROUP BY Location;

#4. Total Revenue per Category
SELECT Category, SUM(Revenue) AS TotalRevenue
FROM supplements.supplement_sales_weekly_expanded
GROUP BY Category;

#5. Average Discount Given per Platform
SELECT Platform, AVG(Discount) AS AvgDiscount
FROM supplements.supplement_sales_weekly_expanded
GROUP BY Platform;

#6. Return Rate per Product
SELECT `Product Name`,
       SUM(`Units Returned`) AS TotalReturned,
       SUM(`Units Sold`) AS TotalSold,
       ROUND(SUM(`Units Returned`) * 100.0 / SUM(`Units Sold`), 2) AS ReturnRatePercentage
FROM supplements.supplement_sales_weekly_expanded
GROUP BY `Product Name`;

#7. Find Products with More Than 2 Returns
SELECT `Product Name`, SUM(`Units Returned`) AS TotalReturns
FROM supplements.supplement_sales_weekly_expanded
GROUP BY `Product Name`
HAVING SUM(`Units Returned`) > 2;

# 8. Average Price by Category
SELECT Category, ROUND(AVG(Price), 2) AS AvgPrice
FROM supplements.supplement_sales_weekly_expanded
GROUP BY Category;

# 9. Top Performing Product by Revenue
SELECT `Product Name`, SUM(Revenue) AS TotalRevenue
FROM supplements.supplement_sales_weekly_expanded
GROUP BY `Product Name`
ORDER BY TotalRevenue DESC
LIMIT 1;

# 10. Compare Revenue for Each Product Across Two Dates
SELECT `Product Name`,`Date`, SUM(Revenue) AS Revenue
FROM supplements.supplement_sales_weekly_expanded
GROUP BY `Product Name`, `Date`
ORDER BY `Product Name`, `Date`;

#11. Total Units Sold Per Date
SELECT `Date`, SUM(`Units Sold`) AS TotalUnits
FROM supplements.supplement_sales_weekly_expanded
GROUP BY `Date`;

#12. Revenue from Amazon Only
SELECT SUM(Revenue) AS AmazonRevenue
FROM supplements.supplement_sales_weekly_expanded
WHERE Platform = 'Amazon';

# 13. Total Discounted Revenue (After Applying Discount)
SELECT SUM(Revenue * (1 - Discount)) AS DiscountedRevenue
FROM supplements.supplement_sales_weekly_expanded;

#14. Find Category with Highest Total Returns
SELECT Category, SUM(`Units Returned`) AS TotalReturns
FROM supplements.supplement_sales_weekly_expanded
GROUP BY Category
ORDER BY TotalReturns DESC
LIMIT 1;

# 15. Find Products with Discount Greater Than 20%
SELECT DISTINCT `Product Name`, Discount
FROM supplements.supplement_sales_weekly_expanded
WHERE Discount > 0.20;