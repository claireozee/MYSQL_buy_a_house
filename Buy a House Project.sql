-- CORE REQUIREMENT 1 AND 2
-- Create relational DB with 5 tables, with PK and FK constraints between the tables
CREATE DATABASE buy_a_house;
USE buy_a_house;

-- Creating the empty tables first
CREATE TABLE london_borough_population (
borough_id VARCHAR(20) NOT NULL,
borough VARCHAR(50) NOT NULL,
population INT NOT NULL,
PRIMARY KEY (borough_id)
);

CREATE TABLE borough_level_crime (
crime_id VARCHAR(20) NOT NULL,
borough_id VARCHAR(20) NOT NULL,
Borough VARCHAR(50) NOT NULL,
Major_Category VARCHAR(50) NOT NULL,
Minor_Category VARCHAR(50) NOT NULL,
Sep_16 INT NOT NULL,
Oct_16 INT NOT NULL,
Nov_16 INT NOT NULL,
Dec_16 INT NOT NULL,
Jan_17 INT NOT NULL,
Feb_17 INT NOT NULL,
Mar_17 INT NOT NULL,
Apr_17 INT NOT NULL,
May_17 INT NOT NULL,
Jun_17 INT NOT NULL,
Jul_17 INT NOT NULL,
Aug_17 INT NOT NULL,
Sep_17 INT NOT NULL,
Oct_17 INT NOT NULL,
Nov_17 INT NOT NULL,
Dec_17 INT NOT NULL,
Jan_18 INT NOT NULL,
Feb_18 INT NOT NULL,
Mar_18 INT NOT NULL,
Apr_18 INT NOT NULL,
May_18 INT NOT NULL,
PRIMARY KEY 
(crime_id),
FOREIGN KEY 
(borough_id)
REFERENCES
london_borough_population
(borough_id)
);

CREATE TABLE type_price (
date_id VARCHAR(20) NOT NULL,
Date date,
Detached FLOAT(2) NOT NULL,
Semi_Detached FLOAT(2) NOT NULL,
Terraced FLOAT(2) NOT NULL,
Flat FLOAT(2) NOT NULL,
PRIMARY KEY 
(date_id)
);

CREATE TABLE average_price (
price_id VARCHAR(20) NOT NULL,
date_id VARCHAR(20) NOT NULL,
Date date,
City_of_London FLOAT(2) NOT NULL, -- not in population table
Barking_and_Dagenham FLOAT(2) NOT NULL,
Barnet FLOAT(2) NOT NULL,
Bexley FLOAT(2) NOT NULL, 
Brent FLOAT(2) NOT NULL,
Bromley	FLOAT(2) NOT NULL,
Camden FLOAT(2) NOT NULL,
Croydon	FLOAT(2) NOT NULL,
Ealing FLOAT(2) NOT NULL,
Enfield	FLOAT(2) NOT NULL,
Greenwich FLOAT(2) NOT NULL,
Hackney FLOAT(2) NOT NULL,
Hammersmith_and_Fulham FLOAT(2) NOT NULL,
Haringey FLOAT(2) NOT NULL,
Harrow FLOAT(2) NOT NULL,
Havering FLOAT(2) NOT NULL,
Hillingdon FLOAT(2) NOT NULL,
Hounslow FLOAT(2) NOT NULL,
Islington FLOAT(2) NOT NULL,
Kensington_and_Chelsea FLOAT(2) NOT NULL,
Kingston_upon_Thames FLOAT(2) NOT NULL,
Lambeth	FLOAT(2) NOT NULL,
Lewisham FLOAT(2) NOT NULL,
Merton FLOAT(2) NOT NULL,
Newham FLOAT(2) NOT NULL,
Redbridge FLOAT(2) NOT NULL,
Richmond_upon_Thames FLOAT(2) NOT NULL,
Southwark FLOAT(2) NOT NULL,
Sutton FLOAT(2) NOT NULL,
Tower_Hamlets FLOAT(2) NOT NULL,
Waltham_Forest FLOAT(2) NOT NULL,
Wandsworth FLOAT(2) NOT NULL,
Westminster FLOAT(2) NOT NULL,
PRIMARY KEY 
(price_id),
FOREIGN KEY 
(date_id)
REFERENCES
type_price
(date_id)
);

CREATE TABLE sales_volume (
volume_id VARCHAR(20) NOT NULL,
date_id VARCHAR(20) NOT NULL,
Date date,
City_of_London FLOAT(2) NOT NULL, -- not in population table
Barking_and_Dagenham FLOAT(2) NOT NULL,
Barnet FLOAT(2) NOT NULL,
Bexley FLOAT(2) NOT NULL, 
Brent FLOAT(2) NOT NULL,
Bromley	FLOAT(2) NOT NULL,
Camden FLOAT(2) NOT NULL,
Croydon	FLOAT(2) NOT NULL,
Ealing FLOAT(2) NOT NULL,
Enfield	FLOAT(2) NOT NULL,
Greenwich FLOAT(2) NOT NULL,
Hackney FLOAT(2) NOT NULL,
Hammersmith_and_Fulham FLOAT(2) NOT NULL,
Haringey FLOAT(2) NOT NULL,
Harrow FLOAT(2) NOT NULL,
Havering FLOAT(2) NOT NULL,
Hillingdon FLOAT(2) NOT NULL,
Hounslow FLOAT(2) NOT NULL,
Islington FLOAT(2) NOT NULL,
Kensington_and_Chelsea FLOAT(2) NOT NULL,
Kingston_upon_Thames FLOAT(2) NOT NULL,
Lambeth	FLOAT(2) NOT NULL,
Lewisham FLOAT(2) NOT NULL,
Merton FLOAT(2) NOT NULL,
Newham FLOAT(2) NOT NULL,
Redbridge FLOAT(2) NOT NULL,
Richmond_upon_Thames FLOAT(2) NOT NULL,
Southwark FLOAT(2) NOT NULL,
Sutton FLOAT(2) NOT NULL,
Tower_Hamlets FLOAT(2) NOT NULL,
Waltham_Forest FLOAT(2) NOT NULL,
Wandsworth FLOAT(2) NOT NULL,
Westminster FLOAT(2) NOT NULL,
PRIMARY KEY 
(volume_id),
FOREIGN KEY 
(date_id)
REFERENCES
type_price
(date_id)
);

-- Manually imput data (didn't work with import wizard)
INSERT INTO london_borough_population 
(borough_id, borough, population)
VALUES
("B1", "Barking and Dagenham", "210711"),
("B2", "Barnet", "387803"),
("B3", "Bexley", "246124"),
("B4", "Brent", "329102"),
("B5", "Bromley", "329391"),
("B6", "Camden", "253361"),
("B7", "Croydon", "384837"),
("B8", "Ealing", "342736"),
("B9", "Enfield", "332705"),
("B10", "Greenwich", "282849"),
("B11", "Hackney", "275929"),
("B12", "Hammersmith and Fulham", "182998"),
("B13", "Haringey", "271224"),
("B14", "Harrow", "248880"),
("B15", "Havering", "256039"),
("B16", "Hillingdon", "302343"),
("B17", "Hounslow", "269100"),
("B18", "Islington", "235000"),
("B19", "Kensington and Chelsea", "155741"),
("B20", "Kingston upon Thames", "174609"),
("B21", "Lambeth",	"324048"),
("B22", "Lewisham", "301307"),
("B23", "Merton", "206052"),
("B24", "Newham", "347996"),
("B25", "Redbridge", "301785"),
("B26", "Richmond upon Thames", "195680"),
("B27", "Southwark", "314232"),
("B28", "Sutton", "203243"),
("B29", "Tower Hamlets", "307964"),
("B30", "Waltham Forest", "275505"),
("B31", "Wandsworth", "323257"),
("B32", "Westminster", "244796");

-- used import wizard to import data
SELECT * FROM london_borough_population
ORDER BY borough; 

SELECT * FROM borough_level_crime
ORDER BY borough;
-- 1025 rows imported with wizard after manually importing london_borough_population

SELECT * FROM type_price
ORDER BY DATE; -- 211 rows

SELECT * FROM sales_volume
ORDER BY DATE; -- 211 rows

SELECT * FROM average_price
ORDER BY DATE; -- 211 rows
-- ISSUE - not ordering by PK


-- CORE REQUIREMENT 3
-- Using any type of the joins create a view that combines multiple tables in a logical way
-- I'm interested in buying a flat in London. I want to compare the average flat price to the flat price in 3 locations in London - Enfield, Hackney and Islington.
CREATE VIEW london_flat
AS
	SELECT type_price.date, type_price.flat as average_flat_price, average_price.enfield, average_price.hackney, average_price.islington
	FROM type_price
	INNER JOIN average_price
	ON type_price.date_id = average_price.date_id
	ORDER BY date;
SELECT * FROM london_flat;



-- CORE REQUIREMENT 4
-- In your database, create a stored function that can be applied to a query in your DB
-- I went on holiday abroad in December 2017 to January 2018. I'd like to know how many crimes occurred in a particular borough in London while I wasn't here.
SELECT * FROM borough_level_crime;
DELIMITER //
CREATE FUNCTION total_crimes(dec_17 INT)
RETURNS VARCHAR(20)
DETERMINISTIC 
BEGIN
DECLARE total VARCHAR(20);
    IF (dec_17) > 100 THEN
        SET total = 'RED';
    ELSEIF ((dec_17) >= 50 AND 
            (dec_17) <= 100) THEN
        SET total = 'AMBER';
    ELSEIF (dec_17) < 50 THEN
        SET total = 'GREEN';
    END IF;
    RETURN total;
END//
DELIMITER ;

SELECT total_crimes(200);
-- both functions work
-- above has one parameter, below has the sum of two but have to manually choose it
-- next step - include SQL code in function to add values from both columns?

DELIMITER //
CREATE FUNCTION total_crimes_sum(dec_17 INT, jan_18 INT)
RETURNS VARCHAR(20)
DETERMINISTIC 
BEGIN
DECLARE total VARCHAR(20);
    IF (dec_17 + jan_18) > 100 THEN
        SET total = 'RED';
    ELSEIF ((dec_17 + jan_18) >= 50 AND 
            (dec_17 + jan_18) <= 100) THEN
        SET total = 'AMBER';
    ELSEIF (dec_17 + jan_18) < 50 THEN
        SET total = 'GREEN';
    END IF;
    RETURN total;
END//
DELIMITER ;

SELECT total_crimes_sum(56,63);



-- CORE REQUIREMENT 5
-- Prepare an example query with a subquery to demonstrate how to extract data from your DB for analysis 
-- I want to see all the crimes that have happened in the least populated borough in London.
SELECT * FROM borough_level_crime
WHERE borough = (
	SELECT borough FROM london_borough_population
	ORDER BY population ASC
	LIMIT 1);-- least populated borough



-- CORE REQUIREMENT 6
-- Create DB diagram where all table relations are shown




-- ADVANCED REQUIREMENT 4
-- Create a view that uses at least 3-4 base tables; prepare and demonstrate a query that uses the view to produce a logically arranged result set for analysis.
-- Comparing average price for a terraced house to three boroughs: Barnet, Harrow and Wandsworth.
-- Also comparing how many were purchased in those boroughs (number may not exclusively be for terraced houses)

-- what I want
-- date id, date, terraced average, 
-- barnet, barnet vol, 
-- harrow, harrow vol, 
-- wandsworth, wansdworth vol

-- type_price
-- average_price
-- sales_volume

CREATE VIEW london_terraced
AS
	SELECT type_price.date_id, type_price.date, type_price.terraced as terraced_average,
	average_price.barnet, sales_volume.barnet as barnet_sales_no,
	average_price.harrow, sales_volume.harrow as harrow_sales_no,
	average_price.wandsworth, sales_volume.wandsworth as wandsworth_sales_no
	FROM type_price
	INNER JOIN average_price
	ON type_price.date_id = average_price.date_id
	INNER JOIN sales_volume
	ON type_price.date_id = sales_volume.date_id
	ORDER BY date;
SELECT * FROM london_terraced;



-- ADVANCED REQUIREMENT 5
-- Prepare an example query with group by and having to demonstrate how to extract data from your DB for analysis 
-- Max number of crimes in each borough in a given month, having the number of crimes greater than 100
SELECT * FROM borough_level_crime;
SELECT borough, MAX(feb_18)
FROM borough_level_crime
GROUP BY borough
HAVING MAX(feb_18) > 100
ORDER BY borough;