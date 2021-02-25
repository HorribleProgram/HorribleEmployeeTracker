DROP DATABASE IF EXISTS employeeDB;

CREATE DATABASE employeeDB;
USE employeeDB;

CREATE TABLE department (
  if INT NOT NULL AUTO_INCREMENT PRIMARY KEY, department VARCHAR(30)
);

CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, title VARCHAR(30), salary DECIMAL, 
  department_ID INT, FOREIGN KEY (department_ID) REFERENCES department(id)
);

CREATE TABLE emp (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first VARCHAR(30),
  last VARCHAR(30),
  manager_ID INT,
  role_ID INT,
  FOREIGN KEY (role_ID) REFERENCES role(id), FOREIGN KEY (manager_ID) REFERENCES employee(id)
);