--Sekwencja przydatna do dodawania kolejnych wierszy do tabeli LOCATIONS
CREATE SEQUENCE locations_seq  
 START WITH     3300  
 INCREMENT BY   100  
 MAXVALUE       9900  
 NOCACHE  
 NOCYCLE;
 
 
--Sekwencja przydatna do dodawania kolejnych wierszy do tabeli DEPARTMENTS
CREATE SEQUENCE departments_seq  
 START WITH     280  
 INCREMENT BY   10  
 MAXVALUE       9990  
 NOCACHE  
 NOCYCLE;


--Sekwencja przydatna do dodawania kolejnych wierszy do tabeli EMPLOYEES
CREATE SEQUENCE employees_seq  
 START WITH     207  
 INCREMENT BY   1  
 NOCACHE  
 NOCYCLE;
 
