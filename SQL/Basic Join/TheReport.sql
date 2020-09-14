-- github.com/jbrdge

SELECT 
CASE
    WHEN Students.Marks > 70 
    THEN Students.Name 
    ELSE NULL 
END AS name, 
Grades.Grade, 
Students.Marks
FROM Students
INNER JOIN Grades
ON Students.Marks <= Grades.Max_mark 
AND Students.Marks >= Grades.Min_mark
ORDER BY 
Grades.Grade DESC,
CASE WHEN Students.Marks > 70 THEN name END ASC,
CASE WHEN Students.Marks <=  70 THEN Grades.Grade END ASC;