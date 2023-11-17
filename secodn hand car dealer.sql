create schema cars;

use cars;
-- READ THE DATA --
select * from car_dekho;

-- Total Cars : To Get The Count Of Total Records --
select count(*) from car_dekho;

----- The Manager ask the Employee how many cars will be available in 2023 --
select count(*) from car_dekho where year= 2023;

-- The Manager ask the Employee how many cars will be available in 2020,2021,2022 --
select year, count(*) from car_dekho where year in(2020,2021,2022);

-- Group By --
select year, count(*) from car_dekho where year in(2020,2021,2022)
group by year;

-- Client ask me to print the total of all cars --
select year , count(*) from car_dekho group by year;

-- Client asked to the car dealer agent How many Diesel car will be there in 2020 --
select Count(*) from car_dekho where fuel= "Diesel" and year = 2020;

-- Client asked to the car dealer agent How many Petrol car will be there in 2020 --
select Count(*) from car_dekho where fuel= "Petrol" and year = 2020;

-- The manager told the employee to give a print of all the fuel cars(Petrol, Diesel and CNG) come by all year --
select year, count(*) from car_dekho where fuel = "Petrol" group by year;
select year, count(*) from car_dekho where fuel = "Diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;

-- Manager said there were more then 100 cars in the given year . which year has more the 100 cars --
select year, count(*) from car_dekho group by year having count(*)>100;
select year, count(*) from car_dekho group by year having count(*)<50;

-- The manager said to the employee all cars count details betwenn 2015 and 2023 we need to complete the list --
select count(*) from car_dekho where year between 2015 and 2023;

-- The manager said to the employee All cars details between 2015 to 2023 we need complete list. --
select * from car_dekho where year between 2015 and 2023;