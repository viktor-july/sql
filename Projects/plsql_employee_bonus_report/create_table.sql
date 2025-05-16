CREATE TABLE employees (
  emp_id NUMBER PRIMARY KEY,
  emp_name VARCHAR2(50),
  department VARCHAR2(30),
  salary NUMBER(10,2),
  performance_score NUMBER(3)
);

INSERT INTO employees VALUES (1, 'Alice', 'IT', 6000, 85);
INSERT INTO employees VALUES (2, 'Bob', 'HR', 4500, 70);
INSERT INTO employees VALUES (3, 'Charlie', 'Finance', 5000, 92);
INSERT INTO employees VALUES (4, 'Diana', 'IT', 5500, 60);
INSERT INTO employees VALUES (5, 'Eve', 'Marketing', 4800, 75);
