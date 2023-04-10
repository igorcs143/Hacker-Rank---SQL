-- PROBLEM STATMENT:

/*
Query the difference between the maximum and minimum populations in CITY.
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

SELECT MAX(Population) - MIN(Population)
FROM CITY;
