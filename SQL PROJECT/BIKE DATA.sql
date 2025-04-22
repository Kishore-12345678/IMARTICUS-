create database bike_details;
use bike_details;
select*from bike_sales_india;

#1. List all vehicles with a resale price greater than ₹150,000.
SELECT *
FROM bike_sales_india
WHERE `Resale _Price (INR)` > 150000;

#2. Show all Electric bikes that were registered in 2023.
SELECT *
FROM bike_sales_india
WHERE `Fuel Type` = 'Electric'
AND `Registration _Year` = 2023;

#3. Count the number of bike by each fuel type.
SELECT `Fuel Type`, COUNT(*) AS vehicle_count
FROM bike_sales_india
GROUP BY `Fuel Type`;

#4. Find the top 5 most expensive bikes by original price.
SELECT *
FROM bike_sales_india
ORDER BY `Price (INR)` DESC
LIMIT 5;

#5. Show average mileage by fuel type.
SELECT `Fuel Type`, AVG(`Mileage (km/l)`) AS avg_mileage
FROM bike_sales_india
GROUP BY `Fuel Type`;

#6. Find all vehicles from Karnataka.
SELECT *
FROM bike_sales_india
WHERE State = 'Karnataka'
AND `Engine Capacity (cc)` > 700;

#7. Show resale price difference for each vehicle (Original Price - Resale Price).
SELECT Brand, Model, `Price (INR)`, `Resale _Price (INR)`,
       (`Price (INR)` - `Resale _Price (INR)`) AS Price_Difference
FROM bike_sales_india;

#8. Count how many bikes are from each city tier.
SELECT `City_ Tier`, COUNT(*) AS total_bikes
FROM bike_sales_india
GROUP BY `City_ Tier`;

#9. List all bikes where the insurance is expired or not available.
SELECT *
FROM bike_sales_india
WHERE `Insurance_ Status` IN ('Expired', 'Not Available');

#10. Find the vehicle with the highest mileage.
SELECT *
FROM bike_sales_india
ORDER BY `Mileage (km/l)` DESC
LIMIT 1;

#11. Show the average resale price of vehicles by owner type.
SELECT `Owner Type`, AVG(`Resale _Price (INR)`) AS avg_resale_price
FROM bike_sales_india
GROUP BY `Owner Type`;

#12. List all dealer-sold vehicles manufactured before 2020.
SELECT *
FROM bike_sales_india
WHERE `Seller _Type` = 'Dealer'
AND `Year of Manufacture` < 2020;

#13. Find all Royal Enfield bikes with mileage greater than 50 km/l.
SELECT *
FROM bike_sales_india
WHERE Brand = 'Royal Enfield'
AND `Mileage (km/l)` > 50;

#14. Show vehicles whose resale price is less than 50% of the original price.
SELECT *
FROM bike_sales_india
WHERE `Resale _Price (INR)` < 0.5 * `Price (INR)`;

#15. Find the number of bikes registered each year
SELECT `Registration _Year`, COUNT(*) AS total_registered
FROM bike_sales_india
GROUP BY `Registration _Year`
ORDER BY `Registration _Year`;












