-- init.sql

-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS crudmysql;

-- Create user 'ali' with password 'root'
CREATE USER 'ali'@'%' IDENTIFIED BY 'root';

-- Grant all privileges on crudmysql database to 'ali'
GRANT ALL PRIVILEGES ON crudmysql.* TO 'ali'@'%';

-- Flush the privileges
FLUSH PRIVILEGES;

-- Use the crudmysql database
USE crudmysql;

-- Create the users table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    age INT NOT NULL,
    mobile VARCHAR(15) NOT NULL,
    work VARCHAR(100) NOT NULL,
    `add` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL
);
