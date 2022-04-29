/* Wykorzystanie zmiennej rekordowej w instrukcji UPDATE na tabeli DEPARTMENTS; */
DECLARE 
    v_dept departments%ROWTYPE;
BEGIN
    UPDATE departments
       SET department_id = 290
         , department_name = 'Business analysis'
         , manager_id = 200
         , location_id = 1800
     WHERE department_id = 200
    RETURNING department_id, department_name, manager_id, location_id
    INTO v_dept;
    
    DBMS_OUTPUT.PUT_LINE(
                        'v_dept.department_id: '  ||v_dept.department_id ||chr(10)||
                        'v_dept.department_name: '||v_dept.department_name||chr(10)||
                        'v_dept.manager_id: '     ||v_dept.manager_id  ||chr(10)||
                        'v_dept.location_id: '    ||v_dept.location_id  ||chr(10)
                        );

    --zerowanie zmiennej rekordowej
    v_dept := NULL;
    DBMS_OUTPUT.PUT_LINE(
                        'v_dept.department_id: '  ||v_dept.department_id  ||chr(10)||
                        'v_dept.department_name: '||v_dept.department_name||chr(10)||
                        'v_dept.manager_id: '     ||v_dept.manager_id ||chr(10)||
                        'v_dept.location_id: '    ||v_dept.location_id  ||chr(10)
                        );     
END;
/


/*  Wczytanie do kolekcji INDEX BY TABLE tabeli COUNTRIES;
	Wyświetlenie zawartości kolekcji przy użyciu pętli WHILE; */
DECLARE
    TYPE t_countries IS TABLE OF countries%ROWTYPE INDEX BY VARCHAR2(50);
    at_countries t_countries;
	v_index VARCHAR2(50);  
BEGIN
    v_index := at_countries.FIRST;
    WHILE v_index IS NOT NULL
    LOOP
        DBMS_OUTPUT.PUT_LINE(at_countries(v_index).country_id||': '||at_countries(v_index).country_name);
        v_index := at_countries.NEXT(v_index);
    END LOOP;
EXCEPTION
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('zapytanie zwraca więcej niż 1 rekord');
END;
/


/*  Wczytanie do kolekcji NESTED TABLE tabeli DEPARTMENTS;
	Wyświetlenie zawartości kolekcji przy użyciu pętli FOR; */
DECLARE
    TYPE t_departments IS TABLE OF departments%ROWTYPE;
    nt_departments t_departments;
BEGIN
    SELECT *
    BULK COLLECT INTO nt_departments
    FROM departments;
    
    FOR i IN nt_departments.FIRST..nt_departments.LAST
    LOOP
        DBMS_OUTPUT.PUT_LINE(nt_departments(i).department_name||': '||nt_departments(i).manager_id);
    END LOOP;
EXCEPTION
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('zapytanie zwraca więcej niż 1 rekord');
END;
/


/*  Wczytanie do kolekcji VARRAY tabeli LOCATIONS; 
	Wyświetlenie zawartości kolekcji przy użyciu pętli FOR; */
DECLARE
    TYPE t_locations IS VARRAY(30) OF locations%ROWTYPE;
    vt_locations t_locations;
BEGIN
    SELECT *
    BULK COLLECT INTO vt_locations
    FROM locations;
    
    FOR i IN vt_locations.FIRST..vt_locations.LAST
    LOOP
        DBMS_OUTPUT.PUT_LINE(vt_locations(i).location_id||': '||vt_locations(i).city);
    END LOOP;
EXCEPTION
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('zapytanie zwraca więcej niż 1 rekord');
END;
/
