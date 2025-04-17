SELECT 
EXTRACT (YEAR FROM orderdate) AS "year",
EXTRACT (MONTH FROM orderdate) AS "month",
EXTRACT (DAY FROM orderdate) AS "day",
SUM(ol.quantity)
FROM orderlines AS ol 
GROUP BY 
ROLLUP (
EXTRACT (YEAR FROM orderdate),
EXTRACT (MONTH FROM orderdate),
EXTRACT (DAY FROM orderdate)
)
ORDER BY 
EXTRACT (YEAR FROM orderdate),
EXTRACT (MONTH FROM orderdate),
EXTRACT (DAY FROM orderdate)