use world;
SELECT * FROM City WHERE Name LIKE 'Ping%' ORDER BY Population ASC;
SELECT * FROM City WHERE Name LIKE 'Ran%' ORDER BY Population DESC;
SELECT COUNT(*) AS CityCount FROM City;
SELECT AVG(Population) AS AveragePopulation FROM City;
SELECT MAX(Population) AS MaxPopulation FROM City;
SELECT MIN(Population) AS MinPopulation FROM City;
SELECT SUM(Population) AS TotalPopulation FROM City WHERE Population < 10000;
SELECT COUNT(*) AS CityCount FROM City WHERE CountryCode IN ('MOZ', 'VNM');
SELECT CountryCode, COUNT(*) AS CityCount FROM City WHERE CountryCode IN ('MOZ', 'VNM') GROUP BY CountryCode;
SELECT CountryCode, AVG(Population) AS AveragePopulation FROM City WHERE CountryCode IN ('MOZ', 'VNM') GROUP BY CountryCode;
SELECT CountryCode, COUNT(*) AS CityCount FROM City GROUP BY CountryCode HAVING COUNT(*) > 200;
SELECT CountryCode, COUNT(*) AS CityCount FROM City GROUP BY CountryCode HAVING COUNT(*) > 200 ORDER BY CityCount DESC;
SELECT CountryCode, COUNT(*) AS CityCount FROM City GROUP BY CountryCode HAVING COUNT(*) > 200 ORDER BY CityCount DESC;
SELECT DISTINCT CountryLanguage.Language
FROM City
JOIN CountryLanguage ON City.CountryCode = CountryLanguage.CountryCode
WHERE City.Population BETWEEN 400 AND 500;
SELECT City.Name AS CityName, CountryLanguage.Language
FROM City
JOIN CountryLanguage ON City.CountryCode = CountryLanguage.CountryCode
WHERE City.Population BETWEEN 500 AND 600;
SELECT City.Name
FROM City
WHERE City.CountryCode = (SELECT CountryCode FROM City WHERE Population = 122199);
SELECT City.Name
FROM City
WHERE City.CountryCode = (SELECT CountryCode FROM City WHERE Population = 122199)
  AND City.Population != 122199;
SELECT City.Name
FROM City
WHERE City.CountryCode = (SELECT CountryCode FROM Country WHERE Capital = (SELECT Id FROM City WHERE Name = 'Luanda'));
SELECT DISTINCT CountryLanguage.Language
FROM CountryLanguage
JOIN Country ON CountryLanguage.CountryCode = Country.Code
WHERE Country.Region = (SELECT Region FROM Country WHERE Capital = (SELECT Id FROM City WHERE Name = 'Riga'));
SELECT Name
FROM City
ORDER BY Population DESC
LIMIT 1;

