create table cars(
	Name varchar(250),
	years int,
	selling_price bigint,
	km_driven bigint,
	fuel varchar(180),
	seller_type varchar(180),
	transmission varchar(180),
	owners varchar(180),
	mileage varchar(180),
	engine varchar(180),
	max_power varchar(180),
	torque varchar(180),
	seats int
);
 -1.
 select * from cars;
--2. total cars to get a count of total records
select count(*) from cars;
--3. the manager asked to the employee how manay cars will be available in 2023? 
select count(*) as car_count from cars where years = '2023';
-- 4.the manager asked to the employee how manay cars is available in 2020,2021,2022? 
select count(*) as car_count from cars where years = '2020'; #74
select count(*) as car_count from cars where years = '2021'; #7
select count(*) as car_count from cars where years = '2022'; # 7

select count(*) as car_count from cars where years in(2020,2021,2022);


--5. how manay diesel car will be available in 2020?
select  count(*) from cars where years = '2020' and fuel = 'Diesel';
---6. how manary petrol cars will be there in 2020?
select count(*) from cars where years = '2020' and fuel = 'CNG';
---7. print all fuel cars(petrol,diesel,cng) come by all years
select years, count(*) from cars where fuel = 'CNG' group by years;
select years, count(*) from cars where fuel = 'Diesel' group by years;
--8. mnager said there were more then 100 cars in given year which year had more then 100 cars? 
select years, count(*) from cars group by years having count(*)>100;
--9. all employee count details between 2015 and 2023 we need a complete list?
select count(*) from cars where years between '2015' and '2023';
--9. all car details between 2015 and 2023 we need a complete list?
select * from cars where years between '2015' and '2023';