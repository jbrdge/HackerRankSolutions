-- github.com/jbrdge

SELECT CEIL(AVG(Salary)-AVG(Sal))
FROM 
(SELECT Salary,REPLACE(CONVERT(Salary, CHAR),"0","") AS Sal
FROM EMPLOYEES) b;