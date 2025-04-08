-- Select people either under 30 or over 50 with an income above 50000 that are from either Japan or Australia
SELECT firstname, income, age FROM customers 
WHERE income > 50_000 AND (age <= 30 OR age >= 50) 
AND (country = 'Japan' OR country = 'Australia'); 

-- What was our total sales in June of 2004 for orders over 100 dollars?
SELECT sum(totalamount) FROM orders 
WHERE (orderdate >= '2004-06-01' AND orderdate <= '2004-06-30') 
AND totalamount > 100;