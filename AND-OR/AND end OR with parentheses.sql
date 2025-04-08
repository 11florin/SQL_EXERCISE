SELECT firstname, lastname, gender, state FROM customers
WHERE (state = 'OR' OR STATE  = 'NY') AND gender = 'F';