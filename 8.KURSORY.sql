/* Przykład kursora jawnego, który za pomocą pętli WHILE wyświetla wszystkie rekordy z tabeli REGIONS; */
DECLARE
    CURSOR curr_regions IS
						SELECT *
						FROM regions;
    v_regions curr_regions%ROWTYPE;                
    v_start BOOLEAN := TRUE;
    
BEGIN
    OPEN curr_regions;
    
    WHILE v_start
    LOOP
        DBMS_OUTPUT.PUT_LINE(v_regions.region_id||': '||v_regions.region_name);
        FETCH curr_regions 
		INTO v_regions;
        v_start := curr_regions%FOUND;
    END LOOP;
    
    CLOSE curr_regions;
END;
/


/* Przykład kursora niejawnego, który za pomocą pętli FOR wyświetla wszystkie rekordy z tabeli JOBS; */
BEGIN
    FOR i IN (SELECT job_id, job_title FROM jobs)
    LOOP
        DBMS_OUTPUT.PUT_LINE(i.job_id||': '||i.job_title);
    END LOOP;
END;
/


/* Przykład wykorzystania kursora do sprawdzenia warunku istnienia departamentów, w których managerowie zarabiają mniej niż 8000; */
DECLARE
    CURSOR curr_department_man IS
                    SELECT d.department_id, d.department_name
                    FROM employees e
                    JOIN departments d
                    ON e.employee_id = d.manager_id
                    WHERE e.salary <8000;

    v_depart_man curr_department_man%ROWTYPE;
    v_rowcount NUMBER;
    
BEGIN
    OPEN curr_department_man;
    
    LOOP
        FETCH curr_department_man INTO v_depart_man;
        EXIT WHEN curr_department_man%NOTFOUND;
    END LOOP;
    
    v_rowcount := curr_department_man%ROWCOUNT;
    CLOSE curr_department_man;
        
    DBMS_OUTPUT.PUT_LINE(v_rowcount||' managerów zarabia mniej niż 8000.');
END;
/


/*  Przykład wykorzystania kursora jawnego z parametrem do zwracania listy pracowników z dowolnego departamentu - nazwa podana w parametrze (tu:'Administration')
	oraz aktualizacji pensji pracowników (podniesienie o 20%) z tego departamentu; */
DECLARE
    CURSOR curr_dep_salary(dep_name VARCHAR2) IS
                                SELECT e.first_name, e.last_name
                                FROM employees e
                                JOIN departments d
                                ON e.department_id = d.department_id
                                WHERE d.department_name = dep_name
                                FOR UPDATE OF e.salary WAIT 6;
                                
    v_dep curr_dep_salary%ROWTYPE;
BEGIN
    OPEN curr_dep_salary('Administration');
    LOOP
        FETCH curr_dep_salary INTO v_dep;
        EXIT WHEN curr_dep_salary%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(v_dep.first_name||' '||v_dep.last_name);
        UPDATE employees
        SET salary = (1 + 20/100)*salary
        WHERE CURRENT OF curr_dep_salary;
    END LOOP;
    CLOSE curr_dep_salary;
END;
/
