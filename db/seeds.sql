INSERT INTO department (id, name)
VALUES (1, "Sales"),
       (2, "Engineering"),
       (3, "Finance"),
       (4, "Legal");
       
INSERT INTO role (id, title, salary, department_id)
VALUES (1, "Sales Lead", 100000, 1),
       (2, "Salesperson", 80000, 1),
       (3, "Lead Engineer", 150000, 2),
       (4, "Software Engineer", 120000, 2),
       (5, "Account Manager", 160000, 3),
       (6, "Accountant", 125000, 3),
       (7, "Legal Team Lead", 250000, 4),
       (8, "Lawyer", 190000, 4);       

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (1, "Jake", "Johnson", 1, null),
       (2, "Melissa", "McCarthy", 2, 1),
       (3, "Danny", "DeVito", 3, null),
       (4, "Amy", "Adams", 4, 3),
       (5, "Drew", "Barrymore", 5, null),
       (6, "Jonah", "Hill", 6, 5),
       (7, "Rebel", "Wilson", 7, null),
       (8, "Mindy", "Kaling", 8, 7); 