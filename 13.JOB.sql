/* Przykład joba, który będzie się uruchamiał codziennie (w dni robocze)o określonej godzinie
 i logował do tabeli PRESENT_EMPLOYEES informacje o liczbie obenych w pracy pracowników; */
 CREATE TABLE present_employees 
	( login_date DATE
	, employees_num NUMBER
	);
	
CREATE OR REPLACE FUNCTION count_employees
RETURN employees.employee_id%TYPE
IS
    emp_num employees.employee_id%TYPE;
BEGIN
    SELECT count(*)
    INTO emp_num
    FROM employees;
    RETURN emp_num;

END count_employees;
/

CREATE OR REPLACE PROCEDURE logged_emp
IS
    emp_num employees.employee_id%TYPE;
BEGIN
    emp_num := count_employees();
    INSERT INTO present_employees(employees_num) VALUES(emp_num);
	
END logged_emp;
/

BEGIN
    DBMS_SCHEDULER.create_program
		(
		  program_name   => 'logged_program'
		, program_type   => 'PLSQL_BLOCK'
		, program_action => 'BEGIN logged_emp; END;'
		, enabled        =>  TRUE
		, comments       => 'Program logujący liczbę obecnych pracowników'
		);
END;
/

BEGIN
    DBMS_SCHEDULER.create_schedule
		(
		  schedule_name   => 'logged_schedule'
		, start_date      =>  SYSTIMESTAMP
		, repeat_interval => 'FREQ=DAILY; BYDAY=MON,TUE,WED,THU,FRI; BYHOUR=14; BYMINUTE=30'
		, end_date        =>  NULL
		, comments        => 'Harmonogram joba: uruchomienie od poniedziałku do piątku o godz. 14:30'
		);
END;
/

BEGIN
    DBMS_SCHEDULER.create_job
		(
		  job_name      => 'logged_job'
		, program_name  => 'logged_program'
		, schedule_name => 'logged_schedule'
		, enabled       =>  TRUE
		, comments      => 'JOB- logowanie informacji o liczbie obecnych pracowników'
		);
END;
/


/* Przykład joba do oznaczania zamówień jako nieaktywne w przypadku braku zaakceptowanej płatności w terminie 5 dni od daty zamówienia; */
CREATE OR REPLACE PROCEDURE invalidate_orders
IS 
    v_order_days_limit INTEGER := 5;
BEGIN 
    UPDATE customer_orders co
    SET status = 'INACTIVE'
    WHERE status = 'NEW'
    AND order_date < SYSDATE - v_order_days_limit
    AND NOT EXISTS (
                    SELECT 1
                    FROM order_payments op
                    WHERE op.order_id = co.order_id
                    AND op.status = 'APPROVED'
                    AND op.payment_date BETWEEN co.order_date AND co.order_date + v_order_days_limit
                    );
END invalidate_orders;
/

BEGIN
    DBMS_SCHEDULER.create_program
		(
		  program_name   => 'invalidate_ord_program'
		, program_type   => 'PLSQL_BLOCK'
		, program_action => 'BEGIN invalidate_orders; END;'
		, enabled        =>  TRUE
		, comments       => 'Program oznaczający nieaktywne zamówienia'
		);
END;
/

BEGIN
    DBMS_SCHEDULER.create_schedule
		(
		  schedule_name   => 'invalidate_ord_schedule'
		, start_date      =>  SYSTIMESTAMP
		, repeat_interval => 'FREQ=DAILY; BYDAY=MON,TUE,WED,THU,FRI,SAT,SUN; BYHOUR=6; BYMINUTE=30'
		, end_date        =>  NULL
		, comments        => 'Harmonogram joba: uruchomienie codziennie o godz. 6:30'
		);
END;
/

BEGIN
    DBMS_SCHEDULER.create_job
		(
		  job_name      => 'invalidate_ord_job'
		, program_name  => 'invalidate_ord_program'
		, schedule_name => 'invalidate_ord_schedule'
		, enabled       =>  TRUE
		, comments      => 'JOB- oznaczanie nieaktywnych zamównień (status: INACTIVE)'
		);
END;
/





