-- PROBLEM STATMENT:

/*
Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy: Founder, Lead Manager, Senior Manager, Manager, Employee.

Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees.
Order your output by ascending company_code.

The tables may contain duplicate records.
The company_code is string, so the sorting should not be numeric. For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.
*/

-- SOLUTION (DB2):

SELECT company_code, founder,
       (SELECT COUNT(DISTINCT lead_manager_code)
         FROM LEAD_MANAGER
         WHERE company_code = COMPANY.company_code
       ),
       (SELECT COUNT(DISTINCT senior_manager_code)
         FROM SENIOR_MANAGER
         WHERE company_code = COMPANY.company_code
       ),
       (SELECT COUNT(DISTINCT manager_code)
         FROM MANAGER
         WHERE company_code = COMPANY.company_code
       ),
       (SELECT COUNT(DISTINCT employee_code)
         FROM EMPLOYEE
         WHERE company_code = COMPANY.company_code
       )
FROM COMPANY
ORDER BY company_code;
