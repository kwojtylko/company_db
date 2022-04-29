/* Przykład funkcji, zwracającą zaktualizowaną pensję pracownika w zależności od aktualnych zarobków; */
CREATE OR REPLACE FUNCTION new_salary(in_emp_id IN employees.employee_id%TYPE) 
RETURN employees.salary%TYPE
IS
    v_new_salary employees.salary%TYPE;
BEGIN
    SELECT salary
    INTO v_new_salary
    FROM employees
    WHERE employee_id = in_emp_id;
    
        IF v_new_salary < 5000
            THEN v_new_salary := v_new_salary * (1+20/100);
        ELSIF v_new_salary BETWEEN 5000 AND 7000
            THEN v_new_salary := v_new_salary * (1+15/100);
        ELSE v_new_salary := v_new_salary * (1+10/100);
        END IF;
        
    RETURN v_new_salary;
END new_salary;
/



