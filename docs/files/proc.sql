create or replace
PROCEDURE award_bonus (
  emp_id NUMBER, sales_amt NUMBER) AS
  l_salary    REAL;
  l_commission    REAL;
  comm_missing  EXCEPTION;
BEGIN
  SELECT salary, commission_pct INTO l_salary, l_commission
    FROM employees
      WHERE employee_id = emp_id;
    dbms_output.put_line('Salary for Employee ID '||emp_id||' currently is: '||l_salary);
    dbms_output.put_line('Commission Percentage for '||emp_id||' currently is: '||l_commission);    
  IF l_commission IS NULL THEN
    RAISE comm_missing
  ELSE
    l_salary := l_salary  + sales_amt*l_commission;
    dbms_output.put_line('Salary for Employee ID '||emp_id||' will be changed to: '||l_salary);    
    UPDATE employees
      SET salary = l_salary
        WHERE employee_id = emp_id;
    
  END IF;
END award_bonus;
