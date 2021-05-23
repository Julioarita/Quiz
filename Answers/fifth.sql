/************************ Some remarks ***********************************************************************************
Julio Arita 22/05/2021

Use SQlite as interpreter of commands.

(1) Although the problem statement declared that it should be sort by their names in alphabetical order when students 
grades (8-10) are the same but it seemed that they were sorted by opposite way in the example.
As much as I understand, alphabetical order is descending order, so first letter is A, then B, then C and so on and so forth. 

Anyway, probably it was my misunderstood but I wanted to remark it.

***************************************************************************************************************************/

SELECT CASE WHEN NOTES.GRADES < 8 THEN STUDENTS.NAME = NULL ELSE STUDENTS.NAME END AS NAMES, NOTES.GRADES, STUDENTS.VALUE 
FROM STUDENTS
LEFT JOIN NOTES ON STUDENTS.VALUE BETWEEN NOTES.MIN_VALUE AND NOTES.MAX_VALUE
ORDER BY 2 DESC,
		(CASE
		WHEN NOTES.GRADES = NOTES.GRADES AND NOTES.GRADES >= 8 THEN STUDENTS.NAME     
        END) ASC, /* (1) Sorting in what I understand as alphabetical order. It could be as shown in the example as well.*/
		(CASE
		WHEN NOTES.GRADES = NOTES.GRADES AND NOTES.GRADES < 8 THEN STUDENTS.VALUE     
        END) ASC;