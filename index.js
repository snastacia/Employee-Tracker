const inquirer = require("inquirer");
const mysql = require("mysql2/promise");
require('dotenv').config()
const helpers = require('./helpers/helpers.js');

const connect = async () => {
  try {
      db = await mysql.createConnection({
          host: "localhost",
          port: 3306,
          user: process.env.DB_USER,
          password: process.env.DB_PASSWORD,
          database: process.env.DB_NAME,
      });

      employeeManager();
    } catch (error) {
      console.log(error)
    }
  };

  async function employeeManager() {
    const answers = await inquirer.prompt([{
      type: "list",
      name: "prompt",
      message: "What would you like to do?",
      choices: ["View All Employees", "Add Employee", "Update Employee Role", "Remove Employee", "View All Roles", "Add Role", "View All Departments", "Add Department", "Quit"]
  }]);
  const selectedOption = answers.prompt

  switch (selectedOption) {
    case "View All Employees":
        await helpers.viewAllEmployees();
        break;
    case "Add Employee":
        await helpers.addEmployee();
        break;
    case "Update Employee Role":
        await helpers.updateEmployeeRole();
        break;
    case "Remove Employee":
        await helpers.removeEmployee();
        break;
    case "View All Roles":
        await helpers.viewAllRoles();
        break;
    case "Add Role":
        await helpers.addRole();
        break;
    case "View All Departments":
        await helpers.viewAllDepartments();
        break;
    case "Add Department":
        await helpers.addDepartment();
        break;
    case "Quit":
        await helpers.quitEmployeeManager();
        break;
  }
  await employeeManager();
};
  
connect();