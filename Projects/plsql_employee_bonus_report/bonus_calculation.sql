BEGIN
  FOR rec IN (SELECT * FROM employees) LOOP
    DECLARE
      v_bonus_pct NUMBER := 0;
      v_flag VARCHAR2(20) := 'OK';
      v_remark VARCHAR2(100);
      v_bonus_amount NUMBER;
    BEGIN
      -- Determine bonus percentage
      IF rec.performance_score >= 90 THEN
        v_bonus_pct := 0.20;
      ELSIF rec.performance_score >= 80 THEN
        v_bonus_pct := 0.15;
      ELSIF rec.performance_score >= 70 THEN
        v_bonus_pct := 0.10;
      ELSE
        v_flag := 'Underperform';
        v_remark := 'Needs Improvement';
      END IF;

      v_bonus_amount := rec.salary * v_bonus_pct;

      -- Insert into report table
      INSERT INTO employee_bonus_report (emp_id, emp_name, department, salary, bonus_amount, performance_flag, remark)
      VALUES (rec.emp_id, rec.emp_name, rec.department, rec.salary, v_bonus_amount, v_flag, NVL(v_remark, 'Good job!'));

    END;
  END LOOP;
END;
