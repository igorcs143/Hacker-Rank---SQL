-- PROBLEM STATMENT:

/*
Query a count of the number of cities in CITY having a Population larger than 100000.
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

SELECT COUNT(DISTINCT Name)
FROM CITY
WHERE POPULATION > 100000;
