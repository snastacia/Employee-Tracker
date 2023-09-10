-- Insert departments
INSERT INTO department (department_name)
VALUES ('Sales'),
       ('Engineering'),
       ('Finance'),
       ('Legal');

-- Insert roles
INSERT INTO roles (title, salary, department_id)
VALUES ('Sales Lead', 100000, 1),
       ('Salesperson', 80000, 1),
       ('Lead Engineer', 150000, 2),
       ('Software Engineer', 120000, 2),
       ('Account Manager', 160000, 3),
       ('Accountant', 125000, 3),
       ('Legal Team Lead', 250000, 4),
       ('Lawyer', 190000, 4);

-- Insert employees
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Jake', 'Johnson', 1, null),
       ('Melissa', 'McCarthy', 2, 1),
       ('Danny', 'DeVito', 3, null),
       ('Amy', 'Adams', 4, 3),
       ('Drew', 'Barrymore', 5, null),
       ('Jonah', 'Hill', 6, 5),
       ('Rebel', 'Wilson', 7, null),
       ('Mindy', 'Kaling', 8, 7);
