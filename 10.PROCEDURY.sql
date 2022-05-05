/* Przykład procedury tworzącej listę produktów z tabeli PRODUCTS; */
CREATE OR REPLACE PROCEDURE make_products_list IS
    CURSOR curr_products IS
                        SELECT product_name
                        FROM products;
BEGIN
    FOR i IN curr_products
    LOOP
        DBMS_OUTPUT.PUT_LINE(i.product_name);
    END LOOP;
END make_products_list;
/


/*  Przykład procedury, która wyświetli imię i nazwisko pracownika o id zadanym w parametzre oraz imię i nazwisko jego przełożongo; */
CREATE OR REPLACE PROCEDURE display_empl_manager(in_emp_id IN employees.employee_id%TYPE)
IS
    CURSOR curr_empl IS
                        SELECT 
                          e.employee_id
                        , e.first_name as employee_first
                        , e.last_name as employee_last
                        , e.manager_id
                        , m.first_name as manager_first
                        , m.last_name as manager_last
                        FROM employees e
                        JOIN employees m
                        ON e.manager_id = m.employee_id
                        WHERE e.employee_id=in_emp_id;
                        
    v_empl curr_empl%ROWTYPE;
        
BEGIN
    OPEN curr_empl;
    FETCH curr_empl INTO v_empl;
    
    IF v_empl.manager_id IS NULL THEN
        DBMS_OUTPUT.PUT_LINE('Pracownik nie posiada przełożonego');
    ELSE
        DBMS_OUTPUT.PUT_LINE(v_empl.manager_first||' '||v_empl.manager_last||' jest przełożonym pracownika '||v_empl.employee_first||' '||v_empl.employee_last||'.');
    END IF;
    CLOSE curr_empl;
      
END display_empl_manager;
/


/*  Przykład procedury, która zamienia wartości kolumny COUNTRY_NAME na wielkie litery dla regionu podanego w parametrze procedury; 
	Drugi parametr (w trybie OUT) zwraca ilość zmodyfikowanych rekordów; */
CREATE OR REPLACE PROCEDURE upper_country_name (in_id_reg IN countries.country_id%TYPE, out_num OUT NUMBER)
IS
BEGIN
        UPDATE countries
        SET country_name = upper(country_name)
        WHERE region_id = in_id_reg;
        out_num := sql%rowcount;
        
        DBMS_OUTPUT.PUT_LINE('Zmodyfikowano nazwę '||out_num||' krajów należących do regionu '||in_id_reg||'.');
END upper_country_name;
/


/* Przykład procedury lokalnej, zwracającej wartości atrybutów kursorowych kursora niejawnego (przed i po poleceniu SELECT); */
DECLARE
    v_last_name employees.last_name%TYPE;
    v_found     VARCHAR2(20);
    v_notfound  VARCHAR2(20);
    v_rowcount  NUMBER;
    v_isopen    VARCHAR2(20);
    
	PROCEDURE display_curr_attributes
	IS
	BEGIN
		v_found := CASE
					 WHEN sql%found=TRUE THEN 'TRUE'
					 WHEN sql%found=FALSE THEN 'FALSE'
					 ELSE 'NULL'
				   END;
				   
		v_notfound := CASE
						WHEN sql%notfound=TRUE THEN 'TRUE'
						WHEN sql%notfound=FALSE THEN 'FALSE'
						ELSE 'NULL'
					  END;
					  
		v_rowcount := sql%rowcount;
		
		v_isopen := CASE
						WHEN sql%isopen=TRUE THEN 'TRUE'
						WHEN sql%isopen=FALSE THEN 'FALSE'
					END;
					
		DBMS_OUTPUT.PUT_LINE('%found: '   ||v_found);
		DBMS_OUTPUT.PUT_LINE('%notfound: '||v_notfound);
		DBMS_OUTPUT.PUT_LINE('%rowcount: '||v_rowcount);
		DBMS_OUTPUT.PUT_LINE('%isopen: '  ||v_isopen);

	END display_curr_attributes;

BEGIN
    DBMS_OUTPUT.PUT_LINE('== BEFORE SELECT ==');
    display_curr_attributes;
    
    SELECT last_name
      INTO v_last_name
      FROM employees
      WHERE employee_id = 100;
      
    DBMS_OUTPUT.PUT_LINE('== AFTER SELECT ==');
    display_curr_attributes;    
    
END;
/


/* Przykład procedury wyświetlającej wszystkie nieskompilowane obiekty w schemacie użytkownika COMPANY; */
CREATE OR REPLACE PROCEDURE find_invalid_objects
IS
    TYPE typ_at IS TABLE OF user_objects%ROWTYPE;
    v_objects typ_at;
    v_rowcount NUMBER;
    
BEGIN
    SELECT *
    BULK COLLECT INTO v_objects
    FROM user_objects
    WHERE status = 'INVALID';
    
    v_rowcount := sql%rowcount;
    
    IF v_rowcount = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Wszystkie obiekty w schemacie użytkownika COMPANY są skompilowane.');
    ELSE
        FOR i IN v_objects.FIRST..v_objects.LAST
        LOOP
            DBMS_OUTPUT.PUT_LINE(v_objects(i).object_name);
        END LOOP;
    END IF;
END find_invalid_objects;
/


/* Przykład procedury wykorzystującej funkcje new_salary() do aktualizacji pensji pracowników z departamentu o id zadanym w parametrze; */
CREATE OR REPLACE PROCEDURE update_salary(in_dep_id IN employees.department_id%TYPE)
IS
    v_salary employees.salary%TYPE;
BEGIN
    FOR i IN (
			SELECT employee_id
			FROM employees
            WHERE department_id = in_dep_id)
    LOOP
        v_salary:= new_salary(i.employee_id);
        UPDATE employees
        SET salary = v_salary
        WHERE employee_id = i.employee_id;
    END LOOP;
END update_salary;
/


/* Przykład autonomicznej procedury do obsługi błędów; */
CREATE TABLE log_table
	( start_date TIMESTAMP
    , username   VARCHAR2(30)
    , error_id   VARCHAR2(15)
    , error_msg  VARCHAR2(4000)
	);
                    
CREATE OR REPLACE PROCEDURE log_errors(in_error_id IN NUMBER, in_error_msg IN VARCHAR2)
IS
    PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
    INSERT INTO log_table(start_date, username, error_id, error_msg) VALUES (systimestamp, user, in_error_id, in_error_msg);
    COMMIT;
END log_errors;
/


/*  Przykład procedury usuwającej wszystkie obiekty danego typu ze schematu COMPANY;
	Typ obiektu przekazywany w parametrze; */
CREATE OR REPLACE PROCEDURE drop_objects(in_object_type VARCHAR2)
IS
BEGIN
    FOR i in (
                SELECT 
                      object_name
                    , object_type
                FROM user_objects
                )
    LOOP
        BEGIN
            IF i.object_type = upper(in_object_type) THEN
                EXECUTE IMMEDIATE 'DROP '||i.object_type||' '||i.object_name;      
            END IF;
        END;
    END LOOP;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Obiekt typu: '||in_object_type||' nie istnieje.');
 
END drop_objects;
/




