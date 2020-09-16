-- github.com/jbrdge

SELECT MAX(a.earnings), COUNT(*)
FROM(
    SELECT name,salary*months as earnings
    FROM Employee) a
GROUP BY a.earnings
ORDER BY a.earnings DESC
LIMIT 1;