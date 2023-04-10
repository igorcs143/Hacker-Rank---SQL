-- PROBLEM STATMENT:

/*
Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
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
WHERE CountryCode = 'JPN';
