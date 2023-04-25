const express = require('express');
const inquirer = require("inquirer");
const mysql = require('mysql2');
const cTable = require('console.table');
const db = mysql.createConnection(
    {
      host: 'localhost',
      // MySQL username,
      user: 'root',
      // TODO: Add MySQL password
      password: 'root123',
      database: 'manage_db'
    },
    console.log(`Connected to the books_db database.`)
  );

const startMenu = () => {
    inquirer
    .prompt([
        {
            type: 'list',
            name: 'menu',
            message: 'What would you like to do?',
            loop: true, 
            choices: ['View All Employees', 'Add Employee', 'Update Employee Role',
        'View All Roles', 'Add Role', 'View All Departments', 'Add Department']
        }
    ]).then(answer => {
        switch (answer.menu) {
            case 'View All Employee':
                viewAllEmployees();
                break;
            case 'Add Employee':
                addEmployee();
                break;
            case 'Update Employee Role':
                updateEmployeeRole();
                break;
            case 'View All Roles':
                viewAllRoles();
                 break;
            case 'Add Role':
                addRole();
                break;
            case 'View All Departments':
                viewAllDepartments();
                break;
            case 'Add Department':
                addDepartment();
                break;
        }
    })
}

function viewAllEmployees() {
    const sql = 'SELECT * FROM employees';
    db.query(sql, (err, result) => {
        console.table(result)
    })
};

function viewAllDepartments() {
    const sql = 'SELECT * FROM departments';
    db.query(sql, (err, result) => {
        console.table(result)
    })
};

function viewAllRoles() {
    const sql = 'SELECT * FROM roles';
    db.query(sql, (err, result) => {
        console.table(result)
    })
};

function addDepartment() {
    inquirer
    .prompt([{
        type: 'input',
        name: 'department_name',
        message: 'Enter new Department name.'
    }]).then((answer) => {
        const sql = `INSERT INTO departments (department_name)
                    VALUES ?`
        const params = answer.name;
        db.query(sql, params, (err, result) => 
        console.table(result))
    })
}
startMenu();