-- PROBLEM STATMENT:

/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* * * * *
* * * *
* * *
* *
*

Write a query to print the pattern P(20).
*/

-- SOLUTION (MS SQL Server):

DECLARE @N INT
SELECT  @N = 20 + 2

WHILE @N > 0
    BEGIN 
        PRINT REPLICATE('* ', @N)
        SET @N = @N - 1
    END
