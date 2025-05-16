CREATE TABLE employee_bonus_report (
  emp_id NUMBER PRIMARY KEY,
  emp_name VARCHAR2(50),
  department VARCHAR2(30),
  salary NUMBER(10,2),
  bonus_amount NUMBER(10,2),
  performance_flag VARCHAR2(20),
  remark VARCHAR2(100)
);
