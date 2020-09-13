-- github.com/jbrdge

SELECT 
    CASE WHEN A+B>C AND A+C>B AND B+C>A THEN 
        CASE WHEN A=B THEN
            CASE WHEN B=C THEN 'Equilateral'
            ELSE 'Isosceles'
            END
        ELSE
            CASE WHEN B=C OR A=C THEN 'Isosceles'
            ELSE 'Scalene'
            END
        END
    ELSE 'Not A Triangle'
    END
FROM TRIANGLES;
