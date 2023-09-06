-- View all departments
SELECT * FROM department;

-- View all roles with department information
SELECT role.id, role.title, department.name AS department, role.salary
FROM role
JOIN department ON role.department_id = department.id;

-- View all employees with role, department, and manager information
SELECT
    employee.id,
    employee.first_name,
    employee.last_name,
    role.title AS title,
    department.name AS department,
    role.salary,
    CONCAT(manager.first_name, ' ', manager.last_name) AS manager
FROM employee
JOIN role ON employee.role_id = role.id
JOIN department ON role.department_id = department.id
LEFT OUTER JOIN employee manager ON employee.manager_id = manager.id;

-- Add a new department
INSERT INTO department (name)
VALUES ('New Department Name');

-- Add a new role
INSERT INTO role (title, salary, department_id)
VALUES ('New Role Title', 50000, 1); -- Replace department_id with the appropriate value

-- Add a new employee
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('John', 'Doe', 1, null); -- Replace role_id and manager_id with the appropriate values

-- Update an employee's role
UPDATE employee SET role_id = 2 WHERE id = 1; -- Replace employee_id and new_role_id with the appropriate values

-- Insert the seed data from your seeds file
INSERT INTO department (id, name)
VALUES (1, 'Sales'),
       (2, 'Engineering'),
       (3, 'Finance'),
       (4, 'Legal');
       
INSERT INTO role (id, title, salary, department_id)
VALUES (1, 'Sales Lead', 100000, 1),
       (2, 'Salesperson', 80000, 1),
       (3, 'Lead Engineer', 150000, 2),
       (4, 'Software Engineer', 120000, 2),
       (5, 'Account Manager', 160000, 3),
       (6, 'Accountant', 125000, 3),
       (7, 'Legal Team Lead', 250000, 4),
       (8, 'Lawyer', 190000, 4);       

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (1, 'Jake', 'Johnson', 1, null),
       (2, 'Melissa', 'McCarthy', 2, 1),
       (3, 'Danny', 'DeVito', 3, null),
       (4, 'Amy', 'Adams', 4, 3),
       (5, 'Drew', 'Barrymore', 5, null),
       (6, 'Jonah', 'Hill', 6, 5),
       (7, 'Rebel', 'Wilson', 7, null),
       (8, 'Mindy', 'Kaling', 8, 7);
