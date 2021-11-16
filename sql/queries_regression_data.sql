#Create a database called house_price_regression

drop database if exists house_price_regression;
create database house_price_regression;
use house_price_regression;


#Create a table house_price_data with the same columns as given in the csv file.
drop table if exists house_price_regression.house_price_data;
create table house_price_data (
id BIGINT NOT NULL, #can't be primary key, there are duplicated values
house_date VARCHAR(10) DEFAULT NULL, #had to alter name
bedrooms INT DEFAULT NULL,
bathrooms FLOAT DEFAULT NULL,
sqft_living INT DEFAULT NULL,
sqft_lot INT DEFAULT NULL,
floors FLOAT DEFAULT NULL,
waterfront INT DEFAULT NULL,
house_view INT DEFAULT NULL, #had to alter name
house_condition INT DEFAULT NULL, #had to alter name
grade INT DEFAULT NULL,
sqft_above INT DEFAULT NULL,
sqft_basement INT DEFAULT NULL,
yr_built INT DEFAULT NULL,
yr_renovated INT DEFAULT NULL,
zipcode INT DEFAULT NULL,
latitude FLOAT DEFAULT NULL, #had to alter name
longitude FLOAT DEFAULT NULL, #had to alter name
sqft_living15 INT DEFAULT NULL,
sqft_lot15 INT DEFAULT NULL,
price INT DEFAULT NULL
); #table created without primary id, mysql sets it automatically

#Import the data from the csv file into the table. 
#Select all the data from table house_price_data to check if the data was imported correctly.
select * from house_price_data;

#Use the alter table command to drop the column date
alter table house_price_data drop column house_date;

#Use sql query to find how many rows of data you have
select count(*) from house_price_data;

#Now we will try to find the unique values in some of the categorical columns:
#What are the unique values in the column bedrooms?
select distinct bedrooms from house_price_data;

#What are the unique values in the column bathrooms?
select distinct bathrooms from house_price_data;

#What are the unique values in the column floors?
select distinct floors from house_price_data;

#What are the unique values in the column condition?
select distinct house_condition from house_price_data;

#What are the unique values in the column grade?
SELECT DISTINCT
    grade
FROM
    house_price_data;

#Arrange the data in a decreasing order by the price of the house. 
SELECT 
    *
FROM
    house_price_data
ORDER BY price;

#Return only the IDs of the top 10 most expensive houses in your data.
SELECT 
    id
FROM
    house_price_data
ORDER BY price DESC
LIMIT 10;

#What is the average price of all the properties in your data?
SELECT 
    ROUND(AVG(price), 2)
FROM
    house_price_data;

#In this exercise we will use simple group by to check the properties of some of the categorical variables in our data
#What is the average price of the houses grouped by bedrooms? 
#The returned result should have only two columns, bedrooms and Average of the prices.
#Use an alias to change the name of the second column.
SELECT 
    bedrooms, ROUND(AVG(price), 2) AS average_house_price
FROM
    house_price_data
GROUP BY bedrooms;

#What is the average sqft_living of the houses grouped by bedrooms? 
#The returned result should have only two columns, bedrooms and Average of the sqft_living.
#Use an alias to change the name of the second column.
SELECT 
    bedrooms, ROUND(AVG(sqft_living), 2) AS average_sqft
FROM
    house_price_data
GROUP BY bedrooms;

#What is the average price of the houses with a waterfront and without a waterfront? 
#The returned result should have only two columns, waterfront and Average of the prices. 
#Use an alias to change the name of the second column.
SELECT 
    waterfront, ROUND(AVG(price), 2) AS average_price
FROM
    house_price_data
GROUP BY waterfront;

#Is there any correlation between the columns condition and grade? 
#You can analyse this by grouping the data by one of the variables and then aggregating the results of the other column.
#Visually check if there is a positive correlation or negative correlation or no correlation between the variables.
SELECT 
    house_condition, grade
FROM
    house_price_data
GROUP BY house_condition , grade
ORDER BY house_condition;

#One of the customers is only interested in the following houses:
#Number of bedrooms either 3 or 4
#Bathrooms more than 3
#One Floor
#No waterfront
#Condition should be 3 at least
#Grade should be 5 at least
#Price less than 300000
#For the rest of the things, they are not too concerned. 
#Write a simple query to find what are the options available for them?
SELECT 
    id, bedrooms, bathrooms, floors, waterfront, grade, price
FROM
    house_price_data
WHERE
    (bedrooms in (3, 4)
		AND bathrooms > 3
        AND floors = 1
        AND waterfront = 0
        AND house_condition >= 3
        AND grade >= 5
        AND price < 300000);
        
#Your manager wants to find out the list of properties whose prices are twice more than the average of all the properties in the database. 
#Write a query to show them the list of such properties. You might need to use a sub query for this problem.
SELECT 
    *
FROM
    house_price_data
WHERE
    price > (SELECT 
            AVG(price) * 2
        FROM
            house_price_data);

#Since this is something that the senior management is regularly interested in, create a view of the same query.
CREATE VIEW twiceoveraverageproperties AS
    SELECT 
        *
    FROM
        house_price_data
    WHERE
        price > (SELECT 
                AVG(price) * 2
            FROM
                house_price_data);
                
#Most customers are interested in properties with three or four bedrooms. 
#What is the difference in average prices of the properties with three and four bedrooms?
SELECT 
    bedrooms, AVG(price)
FROM
    house_price_data
WHERE
    bedrooms IN (3 , 4)
GROUP BY bedrooms;

#What are the different locations where properties are available in your database? (distinct zip codes)
SELECT DISTINCT
    zipcode
FROM
    house_price_data;
    
#Show the list of all the properties that were renovated.
SELECT 
    *
FROM
    house_price_data
WHERE
    yr_renovated != 0;

#Provide the details of the property that is the 11th most expensive property in your database
SELECT 
    *
FROM
    house_price_data
ORDER BY price DESC
LIMIT 10 , 1;