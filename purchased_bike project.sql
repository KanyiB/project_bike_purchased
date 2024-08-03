SELECT * FROM bike_purchases.`bike purchase db`;
Select Marital_status,gender,income,education,occupation, home_owner,cars,commute_distance,region,age,purchased_bike
FROM bike_purchases.`bike purchase db`;
-- Filtering by income asc
Select Marital_status,gender,income,education,occupation, home_owner,cars,commute_distance,region,age,purchased_bike
FROM bike_purchases.`bike purchase db`
order by INCOME
-- Filter by Marital_Status
Select Marital_status,gender,income,education,occupation, home_owner,cars,commute_distance,region,age,purchased_bike
FROM bike_purchases.`bike purchase db`
order by Marital_status;
-- filter by gender
Select Marital_status,gender,income,education,occupation, home_owner,cars,commute_distance,region,age,purchased_bike
FROM bike_purchases.`bike purchase db`
order by gender;
-- filter by education
Select Marital_status,gender,income,education,occupation, home_owner,cars,commute_distance,region,age,purchased_bike
FROM bike_purchases.`bike purchase db`
order by education;
-- filter the number of married female  that live in Europe 

Select Marital_status,gender,income,education,occupation, home_owner,cars,commute_distance,region,age,purchased_bike
FROM bike_purchases.`bike purchase db`
where Marital_status = 'M'
and Gender = 'F'
and region = 'Europe'

-- filter the number of married female with a graduate degree that live in Europe 

Select Marital_status,gender,income,education,occupation, home_owner,cars,commute_distance,region,age,purchased_bike
FROM bike_purchases.`bike purchase db`
where Marital_status = 'M'
and Gender = 'F'
and education = 'graduate degree'
and region = 'Europe'
order by income

-- filter the number of married female  that live in Europe with a degree that bought a bike between 25 years to 50 years
Select Marital_status,gender,income,education,occupation, home_owner,cars,commute_distance,region,age,purchased_bike
FROM bike_purchases.`bike purchase db`
where Marital_status = 'M'
and Gender = 'F'
and region = 'Europe'
and age = '>=25 to <50'
and purchased_bike = 'yes'

-- filter the number of married female  that live in North america with a degree that bought a bike between 25 years to 50 years
Select Marital_status,gender,income,education,occupation, home_owner,cars,commute_distance,region,age,purchased_bike
FROM bike_purchases.`bike purchase db`
where Marital_status = 'M'
and Gender = 'F'
and region = 'North America'
and age = '>=25 to <50'
and purchased_bike = 'yes'
-- The above but a male version
Select Marital_status,gender,income,education,occupation, home_owner,cars,commute_distance,region,age,purchased_bike
FROM bike_purchases.`bike purchase db`
where Marital_status = 'M'
and Gender = 'm'
and region = 'North America'
and age = '>=25 to <50'
and purchased_bike = 'yes'

-- The number of females that bought bikes and had no car
select count(gender),purchased_bike 
from bike_purchases.`bike purchase db`
where purchased_bike = 'yes'
and gender = 'f'
and cars ='0'
group by gender

-- Find a man who has high income, has a car, graduated, in management,age between 35 to 50 that bought a bike
select marital_status, gender, max(income),cars,education,age,purchased_bike
from bike_purchases.`bike purchase db`
where marital_status =' m'
and gender ='m'
and cars ='>1'
and age = '>=35 <=50'
and education = 'graduated degree'
and occupation = ' management'
and purchased_bike = 'yes'
-- Lets check on the correlation 
-- 1. If the level of education has effect on the purchasing power of bikes for different genders
Select gender,education,count(purchased_bike) as purchased_bike_count
from bike_purchases.`bike purchase db`
where purchased_bike = 'yes'
Group by gender, education, purchased_bike
having purchased_bike = 'yes'
order by gender, education

-- 2. If the level of education has effect on the purchasing power of bikes 
Select education,count(purchased_bike) as purchased_bike_count
from bike_purchases.`bike purchase db`
where purchased_bike = 'yes'
Group by  education, purchased_bike
having purchased_bike = 'yes'
order by  education

-- 3 The number of cars 
Select cars as no_cars,count(purchased_bike) as purchased_bike_count
from bike_purchases.`bike purchase db`
where purchased_bike = 'yes' 
and cars>'1'
group by cars
order by cars asc

-- 4. According to the region
Select region,count(purchased_bike) as purchased_bike_count
from bike_purchases.`bike purchase db`
where purchased_bike = 'yes' 
group by region
order by purchased_bike_count asc

-- 5. According to AGE (youth)
Select 
case
when age >= 25 <35 then 'youth'
when age >= 35 <60 then 'adult'
when age >= 60 <75 then 'old'
else 'too old'
end as age_brackets
,count(purchased_bike)as purchased_bike_count
from bike_purchases.`bike purchase db`
where purchased_bike = 'yes' 
and age  between 25 and 100
group by age_brackets
order by age_brackets asc
-- Commute_Distance
Select
Case
when 'commute_distance' = '0-1 miles' then 'near'
when 'commute_distance' = '1-2 miles' then 'a bit far'
when 'commute_distance' = '2-5 miles' then 'far' 
when 'commute_distance' = '5-10 miles' then 'farther'
else 'farthest' 
end as  commute_distance_range,
age, gender, count(purchased_bike) AS count_purchased_bike
from bike_purchases.`bike purchase db`
where purchased_bike = 'yes'
and age <35
group by commute_distance_range, gender, age 
order by commute_distance_range;
-- Adult
Select 
case
when age >= 35 <60 then 'adult'
when age >= 25 <35 then 'youth'
when age >= 60 <75 then 'old'
else 'too old'
end as age_brackets
,count(purchased_bike)as purchased_bike_count
from bike_purchases.`bike purchase db`
where purchased_bike = 'yes' 
and age  between 25 and 100
group by age_brackets
order by age_brackets asc
-- old
Select 
case
when age >= 60 <75 then 'old'
when age >= 25 <35 then 'youth'
when age >= 35 <60 then 'adult'
else 'too old'
end as age_brackets
,count(purchased_bike)as purchased_bike_count
from bike_purchases.`bike purchase db`
where purchased_bike = 'yes' 
and age  between 25 and 100
group by age_brackets
order by age_brackets asc

-- Find the MAX and Min INCOME
SELECT max(INCOME) AS max_income FROM  bike_purchases.`bike purchase db`
SELECT min(INCOME) AS min_income FROM  bike_purchases.`bike purchase db`

-- Highest income depending on the level of education and occupation

Select education,occupation,
max(income)over (partition by education) as max_slary
from bike_purchases.`bike purchase db`
Select education,occupation,
max(income)over (partition by occupation) as max_slary
from bike_purchases.`bike purchase db`