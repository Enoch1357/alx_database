-- prints the full description of the table 'first_table' from the database 'hbtn_0c_0'
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'first_table';
