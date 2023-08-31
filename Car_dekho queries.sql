create database cars;
use cars;

-- READ CARS DATA
select * from car_dekho;

-- TOTAL CARS: TO GET A COUNT OF TOTAL RECORDS
select count(*) from car_dekho;

-- THE MANAGER ASKED HOW MANY CARS WILL BE AVAILBLE IN 2023
select count(*) from car_dekho where year=2023;

-- THE MANAGER ASKED HOW MANY CARS WILL BE AVAILBLE IN 2023,2021,2022
select year,count(*) from car_dekho where year in (2023,2021,2022) group by year;

-- CLIENT ASKED FOR TOTAL CARS IN YEARWISE DATA
select year,count(*) from car_dekho group by year;

-- CLIENT ASKED FOR DIESEL CAR IN 2020 
select count(*) from car_dekho where fuel='Diesel' and year=2020;

-- CLIENT ASKED FOR PETROL CARS IN 2020
select count(*) from car_dekho where fuel='Petrol' and year=2020;

-- CLIENT ASKED FOR DATA OF FUEL BY YEAR
select year,count(*) from car_dekho where fuel='Petrol' group by year;
select year,count(*) from car_dekho where fuel='Diesel' group by year; 
select year,count(*) from car_dekho where fuel='CNG' group by year; 

-- CLIENT ASKED FOR YEAR HAVING MORE THAN 100 cars
select year,count(year) from car_dekho group by year having count(year)>100;

-- CLIENT ASKED FOR CAR COUNT BETWEEN 2015 AND 2023
select count(*) from car_dekho where year between 2015 and 2023;

-- CLIENT ASKED FOR ALL DETAILS BETWEEN 2015 AND 2023
select * from car_dekho where year between 2015 and 2023;

-- END
