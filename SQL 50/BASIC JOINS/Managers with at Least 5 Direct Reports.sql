# Write your MySQL query statement below
SELECT 
    e1.name
FROM 
    employee e1
JOIN 
    (SELECT 
         managerId, 
         COUNT(id) AS direct_reports
     FROM 
         employee
     WHERE 
         managerId IS NOT NULL
     GROUP BY 
         managerId
     HAVING 
         COUNT(id) >= 5) e2
ON 
    e1.id = e2.managerId;
