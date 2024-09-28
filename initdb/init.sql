CREATE USER 'ali'@'%' IDENTIFIED BY 'root';

GRANT ALL PRIVILEGES ON crudmysql.* TO 'ali'@'%';

FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS crudmysql;

USE crudmysql;

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
