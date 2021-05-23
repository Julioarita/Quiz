/*****************************************************************************************
Julio Arita 21/05/2021

Use SQlite as interpreter of commands.

In this particular problem I wasn't given with any constraints so I decided to use `UNION`
which pull out all distinct values from both tables.

******************************************************************************************/

SELECT DOGS.NAME FROM DOGS UNION SELECT CATS.NAME FROM CATS 
