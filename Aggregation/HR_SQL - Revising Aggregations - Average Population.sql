-- PROBLEM STATMENT:

/*
Query the average population for all cities in CITY, rounded down to the nearest integer.Query the average population for all cities in CITY, rounded down to the nearest integer.
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

SELECT FLOOR(AVG(Population))
FROM CITY;
