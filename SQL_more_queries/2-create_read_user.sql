-- Creating the database 'hbtn_0d_2' and the user 'user_0d_2'
CREATE SCHEMA IF NOT EXITS hbtn_0d_2;
CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost';
GRANT SELECT ON hbtn_0d_2.* TO user_0d_2;
SET PASSWORD FOR 'user_0d_2'@'localhost'="user_0d_2_pwd";
GRANT ALL PRIVILEGES ON *.* FOR 'user_0d_2'@'localhost';