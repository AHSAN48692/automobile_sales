SELECT * FROM automobile.customers_info;
use automobile;
select * from info;
select * from sales;

select * from info i inner join sales s on i.order_id = s.order_id;
select i.customer_Name,i.product,sum(s.sales) as e from info i join sales s on i.order_id =s.order_id
group by i.customer_name,i.product;

select i.product,i.country,sum(s.sales) as e from info i inner join sales s
on i.order_id = s.order_id
where product ='Planes'
group by i.product,i.country
order by e desc;


select * from sales;
select * from info
where product = "Motorcycles";
select sum(sales) from sales;
select avg(quantity) as q from sales;
select * from info
where country = "USA";
select distinct(country) as d from info;

select * from sales
order by sales asc;

UPDATE automobile.sales 
SET Dates = STR_TO_DATE(Dates, '%d/%m/%Y');

ALTER TABLE automobile.sales 
MODIFY COLUMN Dates DATE NULL DEFAULT NULL;

SELECT Dates FROM automobile.sales LIMIT 10;

SET SQL_SAFE_UPDATES = 1;

select * from sales
where year(Dates) = "2018";

select i.product,sum(s.sales) as e from info i inner join
sales s on i.order_id = s.order_id
where i.product= "Classic Cars"
group by i.product;

select max(sales) as Max,
min(sales) as Min from sales;

select i.customer_name,count(s.quantity) as e from info i inner join
sales s on i.order_id = s.order_id
group by i.customer_name
order by e desc limit 5;

select i.Product,sum(s.sales) as E from info i inner join
sales s on i.order_id = s.order_id
group by i.Product;

select i.product,Sum(s.sales) as E from info i inner join
sales s on i.order_id = s.order_id;

select count(*) as E from sales
where quantity > 40;

select * from sales
where sales > 5000;

select i.customer_name,Sum(s.sales) as e from info i inner join
sales s on i.order_id = s.order_id
group by i.customer_name
order by E desc limit 5;

select i.product,sum(s.sales) as TS,sum(s.quantity) as TQ, avg(s.sales) as Average from info i inner join
sales s on i.order_id = s.order_id
group by i.product;


select i.country,sum(s.sales) as E from info i inner join
sales s on i.order_id = s.order_id
where year(Dates) = "2019"
group by i.country
order by E desc limit 2;

select i.customer_name, count(i.customer_name) as E from info i inner join
sales s on i.order_id = s.order_id
where i.Product in ("motorcycles","Classic Cars")
group by i.customer_name;

use automobile;
select i.country,sum(s.sales) as S from info i inner join
sales s on i.order_id = s. order_id
where year(dates) = '2019'
group by i.country
order by S desc limit 3;

select sum(s.sales) as S, month(dates)as m, year(dates) as Y from info i inner join
sales s on i.order_id = s. order_id
group by y,m
order by y,m desc;

select year(dates) as Y, sum(s.sales) as S from info i inner join
sales s on i.order_id = s. order_id
group by y
order by Y desc;

select i.product, avg(s.sales) as S from info i inner join
sales s on i.order_id = s.order_id
group by i.product;

select i.country,avg(s.sales) as S from info i inner join
sales s on i.order_id = s. order_id
group by i.country
having s >4000
order by s desc;

Grok questions:
question no 22,24,26,27,28
Focuses on group by, sub queries, Having function;

Select i.product,i.country,sum(s.sales) as S from info i inner join
sales s on i.order_id = s.order_id
group by i.product,i.country
order by s desc limit 5;

select * from sales;
select customer_name,country from info;
select distinct(product) from info;
select * from sales
where sales >3000;

Select * from info
where country= "USA";

Select i.product from info i inner join
sales s on i.order_id = s.order_id
WHERE S.Quantity < 90;

select * from sales order by sales desc;

Select i.product as P,i.country as C,sum(s.sales) as S from info i inner join
sales s on i.order_id = s.order_id
group by P,C
order by s desc limit 10;

select count(*) from sales;
select sum(sales) from sales;
select avg(sales) from sales;
select Max(price) as M, min(price) as N from sales;
select sum(quantity) from sales;
select count(customer_name) from info;

Select i.country as C, sum(s.sales) as S from info i inner join
sales s on i.order_id = s.order_id
group by i.country
order by S desc;

Select * from info i inner join
sales s on i.order_id = s.order_id
where country = "France";

Select * from info i inner join
sales s on i.order_id = s.order_id
where sales between 2000 and 4000;

Select * from info i inner join
sales s on i.order_id = s.order_id
where product like  "M%";

Select * from info i inner join
sales s on i.order_id = s.order_id
where customer_name like "%Inc%";

Select * from info i inner join
sales s on i.order_id = s.order_id
where quantity > 40;

Select * from info i inner join
sales s on i.order_id = s.order_id
where country in ("USA","France");

Select customer_name from info i inner join
sales s on i.order_id = s.order_id
where sales > 3500;

Select * from info i inner join
sales s on i.order_id = s.order_id
where product != 'Motorcycles';


select i.product from info i inner join sales s on
i. order_id = s. order_id;

select i.product,sum(s. sales) as total_sales, avg(s.sales)as average_sales, sum(s.quantity) as T_Quantity from info i inner join sales s 
on i. order_id = s. order_id
group by product;



21;
SELECT 
    i.customer_name, i.product
FROM
    info i
        INNER JOIN
    sales s ON i.order_id = s.order_id
WHERE
    product IN ('Motorcycles' , 'Classic cars')
GROUP BY i.customer_name , i.product
HAVING COUNT(DISTINCT product) = 2;




22;
SELECT 
    YEAR(dates) AS yearly,
    MONTH(dates) AS monthly,
    SUM(s.sales) AS montly_sales
FROM
    info i
        INNER JOIN
    sales s ON i.order_id = s.order_id
GROUP BY yearly , monthly
ORDER BY yearly , monthly;




select i.product, avg(s.sales) as average from info i inner join sales s on
i. order_id = s. order_id
group by i.product
order by average desc limit 5;

select year(dates) yearly, sum(sales)as total from info i inner join sales s on
i. order_id = s. order_id
group by yearly
order by total desc limit 5;



25;
SELECT 
    *
FROM
    info i
        INNER JOIN
    sales s ON i.order_id = s.order_id
WHERE
    s.sales > (SELECT 
            AVG(sales)
        FROM
            sales);
            
            
            
26;
SELECT 
    i.customer_name, SUM(s.quantity) AS TQ
FROM
    info i
        INNER JOIN
    sales s ON i.order_id = s.order_id
GROUP BY i.customer_name
ORDER BY TQ DESC
LIMIT 10;




26b;
SELECT 
    i.CUSTOMER_NAME,
    i.COUNTRY,
    SUM(s.SALES) AS total_spent,
    COUNT(*) AS number_of_orders
FROM
    info i
        JOIN
    sales s ON i.ORDER_ID = s.ORDER_ID
GROUP BY i.CUSTOMER_NAME , i.COUNTRY
ORDER BY total_spent DESC
LIMIT 10;



27;
select i.country, avg(s.sales) as a from info i inner join sales s on
i. order_id = s. order_id
group by i.country
having a> 4000
order by a desc limit 5;



28;
SELECT 
    i.country, i.product, SUM(s.sales) AS TotalS, COUNT(*)
FROM
    info i
        INNER JOIN
    sales s ON i.order_id = s.order_id
GROUP BY i.country , i.product
ORDER BY totalS DESC; 


SELECT 
    i.customer_name, i.product, SUM(s.sales) AS total
FROM
    info i
        INNER JOIN
    sales s ON i.order_id = s.order_id
GROUP BY i.customer_name , i.product
ORDER BY total DESC
LIMIT 5;



SELECT 
    i.country, i.product, SUM(s.sales) AS total
FROM
    info i
        INNER JOIN
    sales s ON i.order_id = s.order_id
WHERE
    country = 'Norway'
GROUP BY i.country , i.product
ORDER BY total DESC;


SELECT 
    i.customer_name, COUNT(*) AS a
FROM
    info i
        INNER JOIN
    sales s ON i.order_id = s.order_id
GROUP BY i.customer_name
HAVING COUNT(DISTINCT YEAR(s.dates)) >= 2
ORDER BY a DESC;

SELECT 
    i.country, COUNT(s.quantity) AS total
FROM
    info i
        INNER JOIN
    sales s ON i.order_id = s.order_id
GROUP BY i.country
ORDER BY total DESC
LIMIT 5;

SELECT 
    i.country, COUNT(i.customer_name) AS total
FROM
    info i
        INNER JOIN
    sales s ON i.order_id = s.order_id
GROUP BY i.country
ORDER BY total DESC
LIMIT 5;

SELECT 
    i.product, SUM(s.sales) AS total
FROM
    info i
        INNER JOIN
    sales s ON i.order_id = s.order_id
GROUP BY i.product
ORDER BY total DESC;


SELECT 
    i.product, MAX(s.sales) AS T
FROM
    info i
        INNER JOIN
    sales s ON i.order_id = s.order_id
GROUP BY i.product
ORDER BY T DESC;


SELECT 
    YEAR(dates) AS Y, MONTH(dates) AS M, SUM(sales) AS D
FROM
    info i
        JOIN
    sales s ON i.order_id = s.order_id
GROUP BY YEAR(dates) , MONTH(dates)
ORDER BY M DESC;

use automobile;
SELECT 
    i.product, SUM(s.sales) AS S
FROM
    info i
        JOIN
    sales s ON i.order_id = s.order_id
GROUP BY i.product
ORDER BY S DESC
LIMIT 5;

SELECT 
    i.country, SUM(s.sales) AS a
FROM
    info i
        INNER JOIN
    sales s ON i.order_id = s.order_id
GROUP BY i.country
ORDER BY a DESC
LIMIT 5;


Automobile 54 ChatGPT;
SELECT 
    i.customer_name, COUNT(i.order_id) AS D
FROM
    info i
        INNER JOIN
    sales s ON i.order_id = s.order_id
GROUP BY i.customer_name
HAVING COUNT(i.order_id) > 1;



SELECT 
    i.customer_name, AVG(s.sales) AS a
FROM
    info i
        INNER JOIN
    sales s ON i.order_id = s.order_id
GROUP BY i.customer_name
ORDER BY a DESC;


SELECT 
    i.product, SUM(s.sales) AS a
FROM
    info i
        INNER JOIN
    sales s ON i.order_id = s.order_id
GROUP BY i.product
ORDER BY a ASC
LIMIT 5;


SELECT 
    i.country, SUM(s.quantity) AS a
FROM
    info i
        INNER JOIN
    sales s ON i.order_id = s.order_id
GROUP BY i.country
ORDER BY A DESC
LIMIT 5;


SELECT 
    i.country, AVG(s.sales) AS a
FROM
    info i
        INNER JOIN
    sales s ON i.order_id = s.order_id
GROUP BY i.country
ORDER BY A DESC;

select i.customer_name,s. sales as a from info i inner join sales s on
i. order_id = s. order_id
where s.sales > ( select avg(sales) from sales)
order by A desc;


WITH AVGG AS (
    SELECT 
        i.customer_name AS E,
        AVG(s.sales) AS D 
    FROM info i 
    JOIN sales s ON i.order_id = s.order_id 
    GROUP BY i.customer_name
)
SELECT 
    i.customer_name AS customer_name,
    s.sales AS individual_sale,
    t.D AS average_sales
FROM sales s
JOIN info i ON s.order_id = i.order_id
JOIN AVGG t ON i.customer_name = t.E
where s.sales> t.d;


SELECT 
    i.product, AVG(s.price) AS a
FROM
    info i
        INNER JOIN
    sales s ON i.order_id = s.order_id
GROUP BY i.product
ORDER BY a DESC
LIMIT 5;

create index rrr on sales (order_id,Dates,price,sales);
drop index rrr on sales;

select country,sum(units_sold) as F, dense_rank() over (order by sum(units_sold) desc) as D from sales
group by country;

subquery 6;
SELECT *
FROM
(
SELECT COUNTRY,
       CUSTOMER_NAME,
       SUM(SALES) TotalSales,
       RANK() OVER(PARTITION BY COUNTRY ORDER BY SUM(SALES) DESC) rnk
FROM Info i
JOIN Sales s
ON i.ORDER_ID=s.ORDER_ID
GROUP BY COUNTRY,CUSTOMER_NAME
)x
WHERE rnk=1;


SELECT 
    i.product, s.quantity AS TotalS
FROM
    info i
        INNER JOIN
    sales s ON i.order_id = s.order_id
WHERE
    s.quantity >= (SELECT 
            AVG(quantity)
        FROM
            sales);

Select i.customer_name as C, sum(s.sales) as S from info i inner join
sales s on i.order_id = s.order_id
group by i.customer_name
having s> (select avg(sales) from sales);

Select max(s.sales) as S from info i inner join
sales s on i.order_id = s.order_id
where s.sales< (select max(sales) from sales)
order by S desc limit 2;


Select max(s.sales) as S from info i inner join
sales s on i.order_id = s.order_id
where s.sales<(select max(sales) from sales);


select sales from sales
order by sales desc limit 1,1;

SELECT 
    i.country, s.sales AS R
FROM
    sales s
        JOIN
    info i ON s.order_id = i.order_id
WHERE
    s.sales >= (SELECT 
            AVG(sales)
        FROM
            sales);

SELECT 
    MONTH(dates) AS Year, ROUND(SUM(sales), 1) AS Total_Sales
FROM
    sales
GROUP BY MONTH(dates)
ORDER BY Total_sales DESC;

SELECT 
    MONTH(dates) AS Year, COUNT(*) AS Total_Sales
FROM
    sales
GROUP BY MONTH(dates)
ORDER BY Total_sales DESC;


SELECT 
    MONTH(DATES) AS month, SUM(sales) AS Total_Sales
FROM
    sales
GROUP BY MONTH(DATES)
ORDER BY Total_sales DESC;

SELECT 
    MONTH(dates) AS M, YEAR(dates) AS Y, SUM(sales) AS D
FROM
    sales
GROUP BY MONTH(dates) , YEAR(dates)
ORDER BY D DESC;

with TS
as (Select i.product,round(avg(s.sales),1) As D from sales s join info i
on i.order_id = s.order_id
group by i.product)

select s.sales,TS.D, i.product from info i join sales s on
i.order_id=s.order_id
join Ts on Ts.product = i.product
where D> s.sales;

with Mont
as (select month(dates) as M ,year(dates) as Y,sum(sales) as D from sales
group by month(dates),year(dates))
select * from mont
order by D desc;

with TS
as (Select i.country,round(sum(s.sales),1) As D from sales s join info i
on i.order_id = s.order_id
group by i.country)
select country,D,dense_rank() over (order by D desc) as R from Ts;


select i.customer_name As C,sum(s.sales) as Total,
dense_rank() over (order by sum(sales) desc) As Rnk 
from sales s join info i 
on i.order_id = s.order_id
group by i.customer_name;


select i.product As C,sum(s.sales)as Total,
dense_rank() over (order by sum(sales) desc) As Rnk 
from sales s join info i 
on i.order_id = s.order_id
group by i.product;

select count(distinct(customer_name)) as D from info;


