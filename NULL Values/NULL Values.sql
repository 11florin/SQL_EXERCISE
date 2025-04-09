-- Assuming a student's minimum age for the class is 15, what is the average age of a student
SELECT avg(COALESCE(age, 15)) FROM "Student";

-- Replace all empty first or last names with a default
SELECT id, COALESCE(NAME,  'firstName'), COALESCE(lastname, 'lastName'), age FROM "Student";


