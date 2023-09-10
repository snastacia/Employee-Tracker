# Employee-Tracker

Link to video demo:

## Description

This Node.js command-line tool enables users to efficiently handle employee management in a MySQL database. You can view, add, update, and remove employees, departments, and roles with ease.

## Installation

To run this application, please do the following:

1. Install the required programs:

- Visual Studio Code
- Node.js
- MySQL
- Git Bash

2. Clone the repository using Git Bash.

3. In Git Bash, run these commands:

- **npm init -y** to create a package.json file.
- **npm install** to install Node Package Manager.
- **npm i inquirer@8.2.4** for the inquirer package.
- **npm i dotenv** for database configuration.
- **npm i mysql2**
- **npm i console.table --save**

4. Configure your MySQL database (follow MySQL installation instructions).

5. Open a terminal and run:

- **mysql -u root -p** to log in.
- **source db/schema.sql** to create the database schema.
- **source db/seeds.sql** to add initial data.

Now you're ready to use the application!

## Usage

To use this application, please:

1. Open your command line in the project directory.
2. Run the app with node index.
3. Choose an action, follow the prompts, and repeat if needed.
4. To exit, select "Quit" from the options.

## License

MIT License

## Credits

-Referenced activites and mini project in Module 12 to aid with writing code 