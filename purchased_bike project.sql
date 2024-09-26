-- Data cleaning and manipulation
SELECT distinct * FROM bike_purchases.`bike purchase db`;
SELECT Marital_status, Gender, Income, Children, Education, Occupation, Home_Owner, Cars, Commute_Distance, Region, Age, Purchased_Bike
FROM bike_purchases.`bike purchase db`;
-- Find which gender purchased a bike
-- From the finding the male are the ones buying the bikes
SELECT 
gender, count(Purchased_Bike) as Total_gender_purchase
 FROM bike_purchases.`bike purchase db`
 GROUP BY Gender,Purchased_Bike
 ORDER BY Gender,Purchased_Bike;
 
 -- Lets look at marital status
 -- It seems like more single women are the one likely to purchase the bikes
 -- Also Married men are the one buying more bikes than single men
 SELECT 
gender, count(Purchased_Bike) as Total_gender_purchase, Marital_Status
FROM bike_purchases.`bike purchase db`
WHERE Purchased_Bike = 'YES'
GROUP BY Gender,Purchased_Bike,Marital_Status
ORDER BY Gender,Purchased_Bike, Marital_Status;

-- Lets look at income
-- The finding is that only the people between 10,000 and 50,000 bought bikes
SELECT 
gender, count(Purchased_Bike) as Total_gender_purchase, Marital_Status,
	CASE
		when income <= 50000 then 'Lower_income'
		when income <= 90000 then 'lower_middle_income'
		when income <= 130000 then 'upper_middle_income'
		when income <= 170000 then 'high_income'
	else 'upper_high_income'
end as income_bracket
FROM bike_purchases.`bike purchase db`
WHERE Purchased_Bike = 'YES'
GROUP BY Gender,Marital_Status,income_bracket
ORDER BY Gender, Marital_Status, total_gender_purchase,income_bracket;

-- Lets know their occupation 
-- It shows that they are all in the occupations from manual,management,Clerical,skilled manual,professional
-- Both male and female the professional occupation  did buy more bikes for both category married or single

SELECT 
gender, count(Purchased_Bike) as Total_gender_purchase, Marital_Status,
	CASE
		when income <= 50000 then 'Lower_income'
		when income <= 90000 then 'lower_middle_income'
		when income <= 130000 then 'upper_middle_income'
		when income <= 170000 then 'high_income'
	else 'upper_high_income'
end as income_bracket,
Occupation
FROM bike_purchases.`bike purchase db`
WHERE Purchased_Bike = 'YES'
and income <= 50000
GROUP BY Gender,Marital_Status,income_bracket,Occupation
ORDER BY Gender, Marital_Status, total_gender_purchase,income_bracket;

-- Education
-- In Bachelors it was the highest in all the skilled Occupations

SELECT 
gender, count(Purchased_Bike) as Total_gender_purchase, Marital_Status,
	CASE
		when income <= 50000 then 'Lower_income'
		when income <= 90000 then 'lower_middle_income'
		when income <= 130000 then 'upper_middle_income'
		when income <= 170000 then 'high_income'
	else 'upper_high_income'
end as income_bracket,
Occupation, Education
FROM bike_purchases.`bike purchase db`
WHERE Purchased_Bike = 'YES'
and income <= 50000
GROUP BY Gender,Marital_Status,income_bracket, Education,Occupation
ORDER BY Gender, Marital_Status, total_gender_purchase,income_bracket,Education;

-- Cars
-- It shows that we should forcus on the people who have 0 to 2 cars in both gender

SELECT 
gender, count(Purchased_Bike) as Total_gender_purchase, Marital_Status,
	CASE
		when income <= 50000 then 'Lower_income'
		when income <= 90000 then 'lower_middle_income'
		when income <= 130000 then 'upper_middle_income'
		when income <= 170000 then 'high_income'
	else 'upper_high_income'
end as income_bracket, Cars
FROM bike_purchases.`bike purchase db`
WHERE Purchased_Bike = 'YES'
and income <= 50000
GROUP BY Gender,Marital_Status,income_bracket, Cars
ORDER BY Gender, Marital_Status, total_gender_purchase,income_bracket,Cars;

-- Commute_Distance
-- Those people that had to commute 0- 1 miles are the one that bought bikes more
SELECT 
distinct gender, count(Purchased_Bike) as Total_gender_purchase,   Commute_distance 
FROM bike_purchases.`bike purchase db`
WHERE Purchased_Bike = 'YES'
and cars <=2
GROUP BY Gender,Commute_Distance
ORDER BY Gender, total_gender_purchase, Commute_Distance;

-- Region that we should forcus
-- North America is leading followed by Europe and then Pacific
SELECT 
distinct gender, count(Purchased_Bike) as Total_gender_purchase,region
FROM bike_purchases.`bike purchase db`
WHERE Purchased_Bike = 'YES'
and cars <=2
GROUP BY Gender,region
ORDER BY Gender, total_gender_purchase, region;

-- Age
-- Both male and female  in the millenial age group are the one who purchased the bikes more then genx
SELECT distinct(gender),count(Purchased_Bike) total_gender_purchase,
case
when age between 25 and 30 then 'genz'
when age between 31 and 45 then  'millenial'
when age between 46 and 60 then  'genx'
when age between 61 and 75 then  'boomers II '
ELSE 'boomers I'
end as age_generation
FROM bike_purchases.`bike purchase db`
WHERE Purchased_Bike = 'YES'
GROUP BY Gender,Age
ORDER BY Gender,total_gender_purchase, Age_generation;

-- Children 
-- The lesser the children they high chances of buying a bike
SELECT distinct(gender),count(Purchased_Bike) total_gender_purchase,children
FROM bike_purchases.`bike purchase db`
WHERE Purchased_Bike = 'YES'
GROUP BY Gender,Children
ORDER BY Gender,total_gender_purchase, Children



 
