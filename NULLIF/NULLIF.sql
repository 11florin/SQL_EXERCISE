--Question: Show NULL when the product is not on special (0)
SELECT prod_id, title, NULLIF(special, 0) AS "special"
FROM products;