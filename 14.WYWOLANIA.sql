-- uruchomienie konsoli
SET SERVEROUTPUT ON;

-- wywołania WIDOKÓW
SELECT *
FROM emp_details_view;

SELECT * 
FROM dept_details_view;

SELECT * 
FROM ord_details_view;


-- wywołania PROCEDUR
EXECUTE make_products_list;

EXECUTE display_empl_manager(101);

DECLARE
    v_row NUMBER;
BEGIN
    upper_country_name(2, v_row);
END;
/

EXECUTE find_invalid_objects;

EXECUTE update_salary(50);

DECLARE
    ex_pk_constr EXCEPTION;
    PRAGMA EXCEPTION_INIT(ex_pk_constr, -00001);
BEGIN
    INSERT INTO COUNTRIES(country_id, country_name) VALUES ('ML', 'Malta');
EXCEPTION
    WHEN ex_pk_constr THEN
        log_errors(sqlcode, sqlerrm);
END;
/

EXECUTE drop_objects('function');


--wywołania FUNKCJI
SELECT 
	  employee_id
	, first_name
	, last_name
	, salary
	, new_salary(employee_id) updated_salary
FROM employees;

-- wywołania FUNKCJI z PAKIETU
BEGIN
    DBMS_OUTPUT.PUT_LINE('Funkcja z parametrem department_id: '||get_salary.get_high_dept_salary(in_dept_id=>80));
    DBMS_OUTPUT.PUT_LINE('Funkcja z dwoma parametrami- department_id oraz job_id: '||get_salary.get_high_dept_salary(in_dept_id=>80,in_job_id=>'SA_REP'));
END;
/


-- jawne wywołania JOBÓW 
EXECUTE dbms_scheduler.run_job(job_name => 'logged_job');

EXECUTE dbms_scheduler.run_job(job_name => 'invalidate_ord_job');

