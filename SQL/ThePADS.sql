-- github.com/jbrdge

SELECT CONCAT(Name,'(',Left(Occupation,1),')')
FROM OCCUPATIONS
ORDER BY NAME ASC;
SELECT CONCAT('There are a total of ',COUNT(Occupation),' ',LOWER(Occupation),'s.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation) ASC,Occupation ASC;