CREATE DATABASE video_games;
USE video_games;

SELECT * FROM vgsales LIMIT 10;

SELECT Name, Platform, Global_Sales
FROM vgsales
ORDER BY Global_Sales DESC
LIMIT 10;

SELECT Platform,
ROUND(SUM(Global_Sales), 2) AS Total_Sales
FROM vgsales
GROUP BY Platform
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT Genre,
ROUND(SUM(Global_Sales), 2) AS Total_Sales,
COUNT(*) AS Number_of_Games
FROM vgsales
GROUP BY Genre
ORDER BY Total_Sales DESC;

SELECT Publisher,
ROUND(SUM(Global_Sales), 2) AS Total_Sales,
COUNT(*) AS Number_of_Games
FROM vgsales
GROUP BY Publisher
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT Genre,
ROUND(SUM(NA_Sales), 2) AS North_America,
ROUND(SUM(EU_Sales), 2) AS Europe,
ROUND(SUM(JP_Sales), 2) AS Japan,
ROUND(SUM(Global_Sales), 2) AS Global
FROM vgsales
GROUP BY Genre
ORDER BY Global DESC;

SELECT Genre,
ROUND(SUM(JP_Sales), 2) AS Japan,
ROUND(SUM(NA_Sales), 2) AS North_America
FROM vgsales
GROUP BY Genre
ORDER BY Japan DESC;