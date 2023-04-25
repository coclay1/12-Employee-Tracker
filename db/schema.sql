DROP DATABASE IF EXISTS department_db;
CREATE DATABASE manage_db;
USE manage_db;

CREATE TABLE department(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE role(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL ,
    department_id INT NOT NULL,
    FOREIGN KEY(department_id)
    REFERENCE department(id)
);

CREATE TABLE employee(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL ,
    role_id INT NOT NULL,
    manager_id INT,
    FOREIGN KEY(role_id)
    REFERENCE role(id)
);
