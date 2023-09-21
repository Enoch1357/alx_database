-- Creating the table 'unique_id' on my server
CREATE TABLE IF NOT EXISTS unique_id
(
    id INT NOT NULL DEFAULT 1 PRIMARY KEY,
    name VARCHAR(256)
);