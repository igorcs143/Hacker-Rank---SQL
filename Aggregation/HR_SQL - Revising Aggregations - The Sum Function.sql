-- PROBLEM STATMENT:

/*
Query the total population of all cities in CITY where District is California.
The CITY table is described as follows:

+-------------+---------------+
| Column      | Type          |
+-------------+---------------+
| ID          | NUMBER        |
| Name        | VARCHAR2 (17) |
| CountryCode | VARCHAR2 (03) |
| District    | VARCHAR2 (20) |
| Population  | NUMBER        |
+-------------+---------------+
*/

-- SOLUTION (DB2):

SELECT SUM(Population)
FROM CITY
WHERE District = 'California';
