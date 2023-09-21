-- Creating the table 'id_not_null' on my server
CREATE TABLE IF NOT EXISTS id_not_null
(
    id INT NOT NULL DEFAULT 1,
    name VARCHAR(256)
);