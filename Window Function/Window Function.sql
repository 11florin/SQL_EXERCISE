SELECT 
    prod_id,
    price,
    category,
    first_value(price) OVER(
    PARTITION BY category
    ORDER BY price
    ) AS "cheapest in category"
FROM products;

SELECT 
    prod_id,
    price,
    category,
    max(price) OVER( --last_value
    PARTITION BY category
    ORDER BY price 
    RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    )AS "most expensive in category"
FROM products;


SELECT
    o.orderid,
    o.customerid,
    o.netamount,
    sum(o.netamount) OVER(
    PARTITION BY o.customerid
    ORDER BY o.orderid
    ) AS "cumulative sum"
FROM orders AS o
ORDER BY o.customerid;

SELECT 
    prod_id,
    price,
    category,
    row_number() OVER(
    PARTITION BY category ORDER BY price
    RANGE BETWEEN CURRENT ROW AND CURRENT ROW
    ) AS "position in category by price"
FROM products;

--Show the population per continent
SELECT 
    DISTINCT continent,
    sum(population) OVER w1 AS "continent population"
FROM country
WINDOW w1 AS(PARTITION BY continent);

/*
*  To the previous query add on the ability to calculate the percentage of the world population
*  What that means is that you will divide the population of that continent by the total population and multiply by 100 to get a percentage.
*/
SELECT 
    DISTINCT continent,
    SUM(population) OVER w1 AS "continent population",
    CONCAT(
        ROUND(
        (
        SUM(population::float4) OVER w1 / SUM(population::float4) OVER() 
        ) * 100
    ), '%') AS "percentage of population"
FROM country
WINDOW w1 AS(PARTITION BY continent);

 --Count the number of towns per region
SELECT 
    DISTINCT 
    r.id,
    r."name",
    COUNT(t.id) OVER(
    PARTITION BY r.id
    ORDER BY r."name"
    ) AS "# of towns"
FROM regions AS r
JOIN departments AS d ON r.code = d.region
JOIN towns AS t ON d.code = t.departments
ORDER BY r.id;   
