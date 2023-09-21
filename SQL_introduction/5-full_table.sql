-- prints the full description of the table 'first_table' from the database 'hbtn_0c_0'
SELECT
    CONCAT(
        TABLE_NAME,
        'CREATE TABLE `',
        TABLE_NAME,
        '` (\n',
        GROUP_CONCAT(
            '`',
            COLUMN_NAME,
            '`',
            ' ',
            COLUMN_TYPE,
            ' ',
            IF(IS_NULLABLE = 'NO', 'NOT NULL', 'DEFAULT NULL'),
            IF(EXTRA = 'auto_increment', 'AUTO_INCREMENT', ''),
            ','
            '\n'
        ),
        'PRIMARY KEY (`id`)\n',
        ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;'
    ) AS 'Create Table'
FROM
    INFORMATION_SCHEMA.TABLES
JOIN
    INFORMATION_SCHEMA.COLUMNS
ON
    INFORMATION_SCHEMA.TABLES.TABLE_NAME = INFORMATION_SCHEMA.COLUMNS.TABLE_NAME
WHERE
    INFORMATION_SCHEMA.TABLES.TABLE_SCHEMA = 'hbtn_0c_0'
    AND INFORMATION_SCHEMA.TABLES.TABLE_NAME = 'first_table';
