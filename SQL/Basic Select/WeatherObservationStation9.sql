-- github.com/jbrdge

SELECT DISTINCT CITY FROM STATION
WHERE LEFT(CITY,1)
NOT IN ('a','e','i','o','u');