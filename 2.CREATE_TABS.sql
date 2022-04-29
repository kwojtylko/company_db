--PRODUCTS- tabela zawierająca informacje o produktach.
--Tabela CUSTOMER_ORDERS posiada klucz obcy do tej tabeli.
CREATE TABLE products
    ( product_id    NUMBER GENERATED ALWAYS AS IDENTITY
	,               CONSTRAINT pro_id_pk  
						PRIMARY KEY (product_id) 
    , product_name  VARCHAR2(30) 
	, status 		VARCHAR2(10)
	, price 		NUMBER(10,2)
    );
	
	
--REGIONS- tabela zawierająca informacje na temat regionów- kontynetów.
--Tabela COUNTRIES posiada klucz obcy do tej tabeli.
CREATE TABLE regions  
    ( region_id      NUMBER GENERATED ALWAYS AS IDENTITY 
                     CONSTRAINT region_id_nn NOT NULL 
    ,                CONSTRAINT reg_id_pk  
                        PRIMARY KEY (region_id) 
    , region_name    VARCHAR2(25)   
    );
	
	
--COUNTRIES- tabela zawierająca infromacje o krajach.
--Tabela LOCATIONS posiada klucz obcy do tej tabeli.
CREATE TABLE countries   
    ( country_id      CHAR(2)   
                      CONSTRAINT country_id_nn NOT NULL 
    ,                 CONSTRAINT country_id_pk   
						PRIMARY KEY (country_id) 
    , country_name    VARCHAR2(40)   
    , region_id       NUMBER   
    ,                 CONSTRAINT country_reg_fk  
						FOREIGN KEY (region_id)  
						REFERENCES regions (region_id)   
    )   
    ORGANIZATION INDEX;
	
	
--LOCATIONS- tabela zwierająca informacje o adresach departamentów firmy.
--Tabela DEPARTMENTS posiada klucz obcy do tej tabeli.
CREATE TABLE locations  
    ( location_id    NUMBER(4)
					 CONSTRAINT loc_id_nn NOT NULL
    ,                CONSTRAINT loc_id_pk  
						PRIMARY KEY (location_id) 
    , street_address VARCHAR2(40)  
    , postal_code    VARCHAR2(12)  
    , city           VARCHAR2(30)  
	                 CONSTRAINT loc_city_nn NOT NULL  
    , state_province VARCHAR2(25)  
    , country_id     CHAR(2)  
    ,                CONSTRAINT loc_c_id_fk  
						FOREIGN KEY (country_id)  
						REFERENCES countries(country_id) 
    );
	
	
--DEPARTMENTS- tabela zawierająca informacje o departamentach firmy.
--Tabela EMPLOYEES, JOB_HISTORY i PROJECTS posiadają klucze obce do tej tabeli.
CREATE TABLE departments  
    ( department_id    NUMBER(4) 
                       CONSTRAINT dept_id_pk  
						 PRIMARY KEY 
    , department_name  VARCHAR2(30)  
	                   CONSTRAINT dept_name_nn NOT NULL  
    , manager_id       NUMBER(6)  
    , location_id      NUMBER(4)  
    ,                  CONSTRAINT dept_loc_fk  
						FOREIGN KEY (location_id)  
						REFERENCES locations (location_id)  
    );
	
	
--JOBS- tabela zawierająca informacje o stanowiskach, na jakich zatrudnieni są pracownicy w firmie.
--Tabele JOB_HISTORY, JOB_LIMITS, EMPLOYEES posiadają klucze obce do tej tabeli.
CREATE TABLE jobs  
    ( job_id         VARCHAR2(10)  
                     CONSTRAINT job_id_pk  
						PRIMARY KEY 
    , job_title      VARCHAR2(35)  
	                 CONSTRAINT job_title_nn NOT NULL  
    , min_salary     NUMBER(6)  
    , max_salary     NUMBER(6)  
    );


--EMPLOYEES- tabela zawierjąca informacje o pracownikach firmy.
--Tabele DEPARTMENTS, JOB_HISTORY i TASKS posiadają klucze obce do tej tabeli.
--Tabela EMPLOYEES posiada klucz obcy odwołujący się do niej samej.
CREATE TABLE employees  
    ( employee_id    NUMBER(6)  
                     CONSTRAINT emp_emp_id_pk 
						PRIMARY KEY 
    , first_name     VARCHAR2(20)  
    , last_name      VARCHAR2(25)  
					 CONSTRAINT emp_last_name_nn  NOT NULL  
    , email          VARCHAR2(25)  
					 CONSTRAINT emp_email_nn  NOT NULL  
    ,				 CONSTRAINT emp_email_uk UNIQUE (email)  
    , phone_number   VARCHAR2(20)  
    , hire_date      DATE  
	                 CONSTRAINT emp_hire_date_nn  NOT NULL  
    , job_id         VARCHAR2(10)  
	                 CONSTRAINT emp_job_nn  NOT NULL
	,			     CONSTRAINT emp_job_fk
						FOREIGN KEY (job_id)
						REFERENCES jobs
    , salary         NUMBER(8,2)  
                     CONSTRAINT emp_salary_min CHECK (salary > 0)  
    , commission_pct NUMBER(2,2)  
    , manager_id     NUMBER(6)  
    ,                CONSTRAINT emp_manager_fk  
                        FOREIGN KEY (manager_id)  
                        REFERENCES employees 
    , department_id  NUMBER(4)  
	,				 CONSTRAINT emp_dept_fk  
                        FOREIGN KEY (department_id)  
                        REFERENCES departments 
    );


--Ustawienie klucza obcego dla tabeli DEPARTMENTS odwołującego się do tabeli EMPLOYEES.
ALTER TABLE departments  
   ADD (CONSTRAINT dept_mgr_fk  
      	FOREIGN KEY (manager_id)  
      	REFERENCES employees (employee_id)  
    );
	
	
--JOB_HISTORY- tabela zawierająca informacje o historii zatrudnienia pracowników.
--Tabele nie posiadają kluczy obcych do tej tabeli.
CREATE TABLE job_history  
    ( employee_id   NUMBER(6)  
	            CONSTRAINT jhist_employee_nn NOT NULL  
    ,           CONSTRAINT jhist_emp_fk  
                    FOREIGN KEY (employee_id)  
                    REFERENCES employees  
    , start_date    DATE  
	            CONSTRAINT jhist_start_date_nn NOT NULL  
    , end_date      DATE  
	            CONSTRAINT jhist_end_date_nn NOT NULL  
    , job_id        VARCHAR2(10)  
	            CONSTRAINT jhist_job_nn NOT NULL  
    ,           CONSTRAINT jhist_job_fk  
                    FOREIGN KEY (job_id)  
                    REFERENCES jobs  
    , department_id NUMBER(4)  
    ,            CONSTRAINT jhist_dept_fk  
                    FOREIGN KEY (department_id)  
                    REFERENCES departments 
    , 			CONSTRAINT jhist_emp_id_st_date_pk  
                    PRIMARY KEY (employee_id, start_date) 
    , 			CONSTRAINT    jhist_date_interval  
                    CHECK (end_date > start_date)  
    ) ;


--CUSTOMERS- tabela zawierająca informacje o klientach.
--Tabela CUSTOMER_ORDERS posiada klucz obcy do tej tabeli.
CREATE TABLE customers 
	( customer_id 	NUMBER GENERATED ALWAYS AS IDENTITY
					CONSTRAINT cust_id_pk 
						PRIMARY KEY 
	, first_name 	VARCHAR2(40)
	, last_name 	VARCHAR2(50)
	, is_company 	VARCHAR2(1)
	);


--CUSTOMER_ORDERS- tabela zawierająca informacje o zamówieniach.
--Tabela ORDER_PAYMENTS posiada klucz obcy do tej tabeli.
CREATE TABLE customer_orders
	( order_id 		NUMBER GENERATED ALWAYS AS IDENTITY
					CONSTRAINT ord_id_pk
						PRIMARY KEY 
	, order_date 	DATE
	, customer_id 	NUMBER
	, product_id 	NUMBER
	, quantity 		NUMBER
	, status 		VARCHAR2(20) DEFAULT 'NEW'
	, 				CONSTRAINT customer_id_fk 
						FOREIGN KEY (customer_id) 
						REFERENCES customers(customer_id)
	, 				CONSTRAINT product_id_fk 
						FOREIGN KEY (product_id) 
						REFERENCES products(product_id)
	);


--ORDER_PAYMENTS- tabela zawieająca informacje o statusie płatności.
--Tabele nie posiadają kluczy obcych do tej tabeli.
CREATE TABLE order_payments
	( payment_id 	NUMBER GENERATED ALWAYS AS IDENTITY
	 				CONSTRAINT pay_id_pk 
						PRIMARY KEY 
	, payment_date 	DATE DEFAULT SYSDATE
	, order_id 		NUMBER
	, status 		VARCHAR2(20) DEFAULT 'PENDING'
	, 				CONSTRAINT order_id_fk 
						FOREIGN KEY (order_id) 
						REFERENCES customer_orders(order_id)
	);
	
	
--JOB_LIMITS- tabela zawierająca infromacje o czasowym limicie dla danego stanowiska, w jakim należy podjąc rozmowy dotyczące przedłużenia umowy o pracę.
--Tabele nie posiadają kluczy obcych do tej tabeli.
CREATE TABLE job_limits
	( id_limit 		NUMBER GENERATED ALWAYS AS IDENTITY
	 				CONSTRAINT id_limit_pk 
						PRIMARY KEY 
	, job_id 		VARCHAR2(30)
	, days_left 	NUMBER
	, 				CONSTRAINT job_id_fk 
						FOREIGN KEY (job_id) 
						REFERENCES jobs(job_id)
	);


--PROJECTS- tabela zawierająca informacje o projektach realizowanych w firmie.
--Tabela TASKS posiada klucz obcy do tej tabeli.
CREATE TABLE projects
	( project_id            NUMBER GENERATED ALWAYS AS IDENTITY
						    CONSTRAINT proj_id_pk 
								PRIMARY KEY 
	, project_name          VARCHAR2(100 BYTE)
	, project_start_date    DATE
	, project_end_date      DATE
	, project_dept          NUMBER
	,						CONSTRAINT proj_dept_fk
								FOREIGN KEY (project_dept)
								REFERENCES departments(department_id)
	, status                VARCHAR2(30 BYTE)
	);

	
	
--TASKS-- tabela zawierająca informacje o zadaniach realizowanych w firmie.
--Tabele nie posiadają kluczy obcych do tej tabeli.
CREATE TABLE tasks
	( task_id 		NUMBER GENERATED ALWAYS AS IDENTITY
					CONSTRAINT task_id_pk
						PRIMARY KEY 
	, task_name 	VARCHAR2(255 BYTE)
	, cost 			NUMBER
	, budget        NUMBER
	, assigned_to   NUMBER
	,				CONSTRAINT task_assign_fk
						FOREIGN KEY (assigned_to)
						REFERENCES employees(employee_id)
	, project_id    NUMBER
	,				CONSTRAINT task_proj_fk
						FOREIGN KEY (project_id)
						REFERENCES projects(project_id)
	);
