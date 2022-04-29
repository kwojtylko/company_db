/* Trigger LOCATIONS_SEQ_TRG uruchamiający się przed każdorazowym poleceniem INSERT na tabeli LOCATIONS;
Dodaje kolejną wartość do kolumny LOCATION_ID; */
CREATE OR REPLACE TRIGGER locations_seq_trg
BEFORE INSERT ON locations
FOR EACH ROW
BEGIN 
	:NEW.location_id := locations_seq.NEXTVAL;
END;
/


/* Trigger DEPARTMENTS_SEQ_TRG uruchamiający się przed każdorazowym poleceniem INSERT na tabeli DEPARTMENTS;
Dodaje kolejną wartość do kolumny DEPARTMENT_ID; */
CREATE OR REPLACE TRIGGER departments_seq_trg
BEFORE INSERT ON departments
FOR EACH ROW
BEGIN 
	:NEW.department_id := departments_seq.NEXTVAL;
END;
/


/* Trigger EMPLOYEES_SEQ_TRG uruchamiający się przed każdorazowym poleceniem INSERT na tabeli EMPLOYEES;
Dodaje kolejną wartość do kolumny EMPLOYEE_ID; */
CREATE OR REPLACE TRIGGER employees_seq_trg
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN 
	:NEW.employee_id := employees_seq.NEXTVAL;
END;
/


/* Przykład wyzywalacza złożonego, sprawdzającego czy aktualizowana lub dodawana pensja pracownika mieści się w przedziale:
- 80% do 120% od średniej pensji w danym departamencie gdy w departamencie pracuje więcej niż 5 osób;
- 80% do 120% od średniej pensji w całej firmie gdy w departamencie pracuje mniej niż 5 osób;;
 */
CREATE OR REPLACE TRIGGER salary_trg
FOR INSERT OR UPDATE OF SALARY ON employees
COMPOUND TRIGGER
    TYPE rec_emp IS RECORD (department_id departments.department_id%TYPE
                          , department_name departments.department_name%TYPE
                          , avg_salary employees.salary%TYPE
                          , cou_employees employees.employee_id%TYPE);
    TYPE at_emp IS TABLE OF rec_emp INDEX BY PLS_INTEGER;
    v_emp at_emp;
    BEFORE STATEMENT
    IS
    BEGIN
        SELECT d.department_id
             , d.department_name
             ,
             CASE
                WHEN count(e.employee_id) > 5 THEN round(avg(e.salary),2)
                ELSE (SELECT round(avg(salary),2) 
						FROM employees)
             END avg_salary
             , count(e.employee_id) cou_employees
          BULK COLLECT INTO v_emp
          FROM employees e
    INNER JOIN departments d
            ON d.department_id = e.department_id
         GROUP BY d.department_id, d.department_name;

    END BEFORE STATEMENT;

    BEFORE EACH ROW
    IS
    BEGIN
        FOR i IN v_emp.FIRST..v_emp.LAST
        LOOP
            IF 
			:NEW.department_ID = v_emp(i).department_id AND
            :NEW.salary NOT BETWEEN v_emp(i).avg_salary * 0.8 AND v_emp(i).avg_salary * 1.2 AND
            v_emp(i).cou_employees > 5
            THEN
                RAISE_APPLICATION_ERROR(-20001, ' Średnia pensja w departamencie '||v_emp(i).department_name||' wynosi '||v_emp(i).avg_salary
                ||'. Nowa pensja pracownika '||:NEW.employee_ID||'('||:NEW.salary||') przekracza dopuszczalne 20% odchylenie od średniej.');

            ELSIF 
			:NEW.department_ID = v_emp(i).department_id AND
            :NEW.salary NOT BETWEEN v_emp(i).avg_salary * 0.8 AND v_emp(i).avg_salary * 1.2 AND
            v_emp(i).cou_employees <= 5
            THEN
                RAISE_APPLICATION_ERROR(-20001, ' Średnia pensja w firmie wynosi '||v_emp(i).avg_salary
                ||'. Nowa pensja pracownika '||:NEW.employee_ID||'('||:NEW.salary||') przekracza dopuszczalne 20% odchylenie od średniej.');
            ELSE NULL;
            END IF;
        END LOOP;
    END BEFORE EACH ROW;
END salary_trg;
/

/* Przykład wyzwalacza uniemożliwiającego logowanie się do bazy danych w weekendy oraz poza godzinami 7:00-18:00 w dni robocze; */
CREATE OR REPLACE TRIGGER logon_trg
AFTER LOGON ON DATABASE
BEGIN
    IF TO_CHAR(sysdate, 'DAY') IN ('SOBOTA', 'NIEDZIELA') THEN
    RAISE_APPLICATION_ERROR(-20001, 'Nie możesz się zalogować do bazy w weekend');
    
    ELSIF TO_NUMBER(sysdate, 'HH24') NOT BETWEEN 7 AND 18 THEN
    RAISE_APPLICATION_ERROR(-20002, 'Nie możesz się zalogować do bazy w dni robocze poza godzinami 7:00-18:00');
    END IF;
END logon_trg;
/

/* Przykład wyzwalacza do automatycznego zatwierdzania zamówienia klienta po dokonaniu płatności; */
CREATE OR REPLACE TRIGGER ai_order_payments_trg
AFTER INSERT ON order_payments
FOR EACH ROW 
WHEN (NEW.status = 'APPROVED')
BEGIN
    UPDATE customer_orders
    SET status = 'APPROVED'
    WHERE order_id = :NEW.order_id;
END;
/