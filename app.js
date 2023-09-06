const mysql = require("mysql2");
const inquirer = require("inquirer");
const queries = require("./utils/queries.js");
const cTable = require("console.table");

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "employee_db",
});

class Role {
  constructor(title, salary, department) {
    this.title = title;
    this.salary = salary;
    this.department = department;
  }
}

class Employee {
  constructor(firstName, lastName, role, manager) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.role = role;
    this.manager = manager;
  }
}

class RoleUpdate {
  constructor(employee, role) {
    this.employee = employee;
    this.role = role;
  }
}

function init() {
  inquirer
    .prompt([
      {
        type: "list",
        message: "What would you like to do?",
        name: "action",
        choices: [
          "View All Departments",
          "View All Roles",
          "View All Employees",
          "Add a Department",
          "Add a Role",
          "Add an Employee",
          "Update an Employee Role",
          "Quit",
        ],
      },
    ])
    .then((data) => {
      switch (data.action) {
        case "View All Departments":
          queries.viewDepartments(db);
          break;
        case "View All Roles":
          queries.viewRoles(db);
          break;
        case "View All Employees":
          queries.viewEmployees(db);
          break;
        case "Add a Department":
          inquirer
            .prompt([
              {
                type: "input",
                name: "department_name",
                message: "Please enter the department name",
              },
            ])
            .then((input) => {
              queries.addDepartment(db, input.department_name);
            });
          break;
        case "Add a Role":
          inquirer
            .prompt([
              {
                type: "input",
                name: "job_title",
                message: "Please enter the role title",
              },
              {
                type: "input",
                name: "salary",
                message: "Please enter the salary for the role",
              },
            ])
            .then((input) => {
              const newRole = new Role(input.job_title, input.salary);
              db.query("SELECT * FROM department", function (err, result) {
                const departmentList = result.map(({ name, id }) => ({
                  name: name,
                  value: id,
                }));

                inquirer
                  .prompt([
                    {
                      type: "list",
                      message: "Select the role's department",
                      name: "depChoice",
                      choices: departmentList,
                    },
                  ])
                  .then((data) => {
                    newRole.department = data.depChoice;
                    queries.addRole(db, newRole);
                  });
              });
            });
          break;
        case "Add an Employee":
          // ... similar logic for adding an employee
          break;
        case "Update an Employee Role":
          // ... similar logic for updating an employee role
          break;
        case "Quit":
          process.exit();
      }
    })
    .catch((err) => {
      console.error(err);
    });
}

init();
