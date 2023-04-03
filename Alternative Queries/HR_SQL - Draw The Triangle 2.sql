-- PROBLEM STATMENT:

/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

*
* *
* * *
* * * *
* * * * *

Write a query to print the pattern P(20).
*/

-- SOLUTION (MS SQL Server):

DECLARE @N INT, @I INT
SELECT  @N = 20 + 1, @I = 1 - 2

WHILE @I < @N
    BEGIN
        PRINT REPLICATE('* ', @I)
        SET @I = @I + 1
    END
