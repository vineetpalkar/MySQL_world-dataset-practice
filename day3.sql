use world;
select * from city ;
select * from city where Name='Herat';  
select District from city where ID='4';   #to select a specific row

select Name from city;
select distinct Name from city;
select distinct CountryCode from city;   #removes duplicates and returns only unique values
select CountryCode from city;

select distinct Name,District from city;

select distinct Name,District from city where ID<100;  #for only 100 IDs

select distinct Name,District from city where ID>100 and ID<200;    #between 100 to 200
select * from city where ID between 100 and 200;                     #using between
select * from city limit 100,200;

select Name,District from city where ID>100 and ID<200;

update city set Name='Kandahar' where ID=1;   #changing name of 1st row Name to Kandahar
select * from city ;
delete from city where ID=1;

select * from city order by Name ASC;      #ascending by name

select * from city where Name='San Jose' order by ID DESC ;    #all the names containing San Jose descending by ID

select Name,District from city where Name='San Jose' order by District ASC;     #display only district where name= SAn Jose

select Name,District from city where Name='San Jose' or Name='Atlanta' order by District ASC;   #

select Name,District from city where Name='Vancouver' or Name='Ontario' order by District ASC;

select Name, District from city where ID>100 order by District DESC, Name ASC;  #one column ascending and other descending

select District,count(*) from city group by District;        #value count of a district  #groupby is used to get for a selected name. eg: we will get all values for District= Kabul

select District,sum(Population) as "sum" from city group by District;   #try all the aggregate functions- count, avg, sum, etc

select District,avg(Population) as "AVG" from city group by District;     

select District,avg(Population) as "AVG" from city group by District having AVG(Population)<270000;

select District,sum(Population) as "sum" from city group by District having sum(Population)>4700000;

select * from city where District='Bahia' and District= 'San JOSE' or ID=10 order by ID ASC;

select * from city where District!='Bahia'; #and District= 'San JOSE' or ID=10 order by ID ASC;   #NOT TAKING Bahia

select District from city where District like 'San%';

select * from city where District like 'toy%';

select * from city where District not like 'Qan%';  #except the name

select * from city where District like '%mouss%';

select * from city where District like '%mouss%';

select * from city where District like 'new y_rk';  #shows the possible combinations filling the blank space

select * from city where Name='Qandahar' or Name='Bern' or Name= 'Sydney';
select * from city where Name in ('Qandahar','Bern','Sydney');               #alternative way 

select * from city where Name not in ('Qandahar','Bern','Sydney');

select * from city where Population is null;                     #to check for null values

use sys;   #trying date time 
select * from sys.sys_config;
select * from sys.sys_config where set_time between cast('2021-11-23 11:35:30' as datetime) and cast('2021-11-23 11:35:30' as datetime);
#aggregate functions= count, sum, min, max, avg, first, last, std, 

use world;
select * from country;
select avg(LifeExpectancy) from country;

select avg(LifeExpectancy) from country where Continent='Asia';  #try for diff continents/countries

select avg(LifeExpectancy) from country where Continent='Asia';

select count(LifeExpectancy) as "count" from country where GNP between 1000 and 5000;

select * from country;

select Name from country limit 15;  # shows first 15 names

select Name from country order by Name DESC limit 15;   #shows last 15

select Name from country order by Name DESC limit 200;



