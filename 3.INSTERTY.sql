--REGIONS
BEGIN  
INSERT INTO regions(region_name) VALUES ('Europe'                );   
INSERT INTO regions(region_name) VALUES ('Americas'              );   
INSERT INTO regions(region_name) VALUES ('Asia'                  );   
INSERT INTO regions(region_name) VALUES ('Middle East and Africa');  
END; 
/


--COUNTRIES
BEGIN  
INSERT INTO countries(country_id, country_name, region_id) VALUES ('IT', 'Italy',                    1);   
INSERT INTO countries(country_id, country_name, region_id) VALUES ('JP', 'Japan',                    3);   
INSERT INTO countries(country_id, country_name, region_id) VALUES ('US', 'United States of America', 2);  
INSERT INTO countries(country_id, country_name, region_id) VALUES ('CA', 'Canada',                   2);   
INSERT INTO countries(country_id, country_name, region_id) VALUES ('CN', 'China',                    3);  
INSERT INTO countries(country_id, country_name, region_id) VALUES ('IN', 'India',                    3);  
INSERT INTO countries(country_id, country_name, region_id) VALUES ('AU', 'Australia',                3);  
INSERT INTO countries(country_id, country_name, region_id) VALUES ('ZW', 'Zimbabwe',                 4);  
INSERT INTO countries(country_id, country_name, region_id) VALUES ('SG', 'Singapore',                3);  
INSERT INTO countries(country_id, country_name, region_id) VALUES ('UK', 'United Kingdom',           1);   
INSERT INTO countries(country_id, country_name, region_id) VALUES ('FR', 'France',                   1);  
INSERT INTO countries(country_id, country_name, region_id) VALUES ('DE', 'Germany',                  1);  
INSERT INTO countries(country_id, country_name, region_id) VALUES ('ZM', 'Zambia',                   4);   
INSERT INTO countries(country_id, country_name, region_id) VALUES ('EG', 'Egypt',                    4);  
INSERT INTO countries(country_id, country_name, region_id) VALUES ('BR', 'Brazil',                   2);  
INSERT INTO countries(country_id, country_name, region_id) VALUES ('CH', 'Switzerland',              1);  
INSERT INTO countries(country_id, country_name, region_id) VALUES ('NL', 'Netherlands',              1);  
INSERT INTO countries(country_id, country_name, region_id) VALUES ('MX', 'Mexico',                   2);  
INSERT INTO countries(country_id, country_name, region_id) VALUES ('KW', 'Kuwait',                   4);  
INSERT INTO countries(country_id, country_name, region_id) VALUES ('IL', 'Israel',                   4);  
INSERT INTO countries(country_id, country_name, region_id) VALUES ('DK', 'Denmark',                  1);  
INSERT INTO countries(country_id, country_name, region_id) VALUES ('ML', 'Malaysia',                 3);  
INSERT INTO countries(country_id, country_name, region_id) VALUES ('NG', 'Nigeria',                  4);  
INSERT INTO countries(country_id, country_name, region_id) VALUES ('AR', 'Argentina',                2);  
INSERT INTO countries(country_id, country_name, region_id) VALUES ('BE', 'Belgium',                  1);  
END; 
/

--LOCATIONS
BEGIN  
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (1000, '1297 Via Cola di Rie',                     '00989',       'Roma',                 NULL,              'IT');  
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (1100, '93091 Calle della Testa',                  '10934',       'Venice',               NULL,              'IT');  
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (1200, '2017 Shinjuku-ku',                         '1689',        'Tokyo',               'Tokyo Prefecture', 'JP');  
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (1300, '9450 Kamiya-cho',                          '6823',        'Hiroshima',            NULL,              'JP');  
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (1400, '2014 Jabberwocky Rd',                      '26192',       'Southlake',           'Texas',            'US');  
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (1500, '2011 Interiors Blvd',                      '99236',       'South San Francisco', 'California',       'US');   
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (1600, '2007 Zagora St',                           '50090',       'South Brunswick',     'New Jersey',       'US');  
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (1700, '2004 Charade Rd',                          '98199',       'Seattle',             'Washington',       'US');  
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (1800, '147 Spadina Ave',                          'M5V 2L7',     'Toronto',             'Ontario',          'CA');   
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (1900, '6092 Boxwood St',                          'YSW 9T2',     'Whitehorse',          'Yukon',            'CA');  
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (2000, '40-5-12 Laogianggen',                      '190518',      'Beijing',              NULL,              'CN');  
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (2100, '1298 Vileparle (E)',                       '490231',      'Bombay',              'Maharashtra',      'IN');  
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (2200, '12-98 Victoria Street',                    '2901',        'Sydney',              'New South Wales',  'AU');  
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (2300, '198 Clementi North',                       '540198',      'Singapore',            NULL,              'SG');  
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (2400, '8204 Arthur St',                            NULL,         'London',               NULL,              'UK');   
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB',     'Oxford',              'Oxford',           'UK');  
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (2600, '9702 Chester Road',                        '09629850293', 'Stretford',           'Manchester',       'UK');  
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (2700, 'Schwanthalerstr. 7031',                    '80925',       'Munich',              'Bavaria',          'DE'); 
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (2800, 'Rua Frei Caneca 1360 ',                    '01307-002',   'Sao Paulo',           'Sao Paulo',        'BR');   
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (2900, '20 Rue des Corps-Saints',                  '1730',        'Geneva',              'Geneve',           'CH');  
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (3000, 'Murtenstrasse 921',                        '3095',        'Bern',                'BE',               'CH');  
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (3100, 'Pieter Breughelstraat 837',                '3029SK',      'Utrecht',             'Utrecht',          'NL');  
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES (3200, 'Mariano Escobedo 9991',                    '11932',       'Mexico City',         'Distrito Federal', 'MX');  
END; 
/


--wyłączenie ograniczenia na tabeli DEPARTMENTS w celu załadowania danych
ALTER TABLE departments   
  DISABLE CONSTRAINT dept_mgr_fk;
  
--DEPARTMENTS
BEGIN  
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (10,  'Administration',       200,  1700);  
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (20,  'Marketing',            201,  1800);                                 
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (30,  'Purchasing',           114,  1700);                 
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (40,  'Human Resources',      203,  2400);  
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (50,  'Shipping',             121,  1500);           
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (60,  'IT',                   103,  1400);                   
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (70,  'Public Relations',     204,  2700);                   
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (80,  'Sales',                145,  2500);                   
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (90,  'Executive',            100,  1700);   
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (100, 'Finance',              108,  1700);                   
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (110, 'Accounting',           205,  1700);   
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (120, 'Treasury',             NULL, 1700);   
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (130, 'Corporate Tax',        NULL, 1700);    
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (140, 'Control And Credit',   NULL, 1700);   
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (150, 'Shareholder Services', NULL, 1700);   
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (160, 'Benefits',             NULL, 1700);   
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (170, 'Manufacturing',        NULL, 1700);   
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (180, 'Construction',         NULL, 1700);  
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (190, 'Contracting',          NULL, 1700);  
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (200, 'Operations',           NULL, 1700);  
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (210, 'IT Support',           NULL, 1700);  
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (220, 'NOC',                  NULL, 1700);   
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (230, 'IT Helpdesk',          NULL, 1700);   
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (240, 'Government Sales',     NULL, 1700);   
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (250, 'Retail Sales',         NULL, 1700);   
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (260, 'Recruiting',           NULL, 1700);   
INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (270, 'Payroll',              NULL, 1700);  
END; 
/

--JOBS
BEGIN  
INSERT INTO jobs(job_id, job_title, min_salary, max_salary) VALUES ('AD_PRES',    'President',                       20080, 40000);  
INSERT INTO jobs(job_id, job_title, min_salary, max_salary) VALUES ('AD_VP',      'Administration Vice President',   15000, 30000);  
INSERT INTO jobs(job_id, job_title, min_salary, max_salary) VALUES ('AD_ASST',    'Administration Assistant',        3000,  6000 );   
INSERT INTO jobs(job_id, job_title, min_salary, max_salary) VALUES ('FI_MGR',     'Finance Manager',                 8200,  16000);  
INSERT INTO jobs(job_id, job_title, min_salary, max_salary) VALUES ('FI_ACCOUNT', 'Accountant',                      4200,  9000 );   
INSERT INTO jobs(job_id, job_title, min_salary, max_salary) VALUES ('AC_MGR',     'Accounting Manager',              8200,  16000);  
INSERT INTO jobs(job_id, job_title, min_salary, max_salary) VALUES ('AC_ACCOUNT', 'Public Accountant',               4200,  9000 );  
INSERT INTO jobs(job_id, job_title, min_salary, max_salary) VALUES ('SA_MAN',     'Sales Manager',                   10000, 20080);  
INSERT INTO jobs(job_id, job_title, min_salary, max_salary) VALUES ('SA_REP',     'Sales Representative',            6000,  12008);  
INSERT INTO jobs(job_id, job_title, min_salary, max_salary) VALUES ('PU_MAN',     'Purchasing Manager',              8000,  15000);   
INSERT INTO jobs(job_id, job_title, min_salary, max_salary) VALUES ('PU_CLERK',   'Purchasing Clerk',                2500,  5500 );  
INSERT INTO jobs(job_id, job_title, min_salary, max_salary) VALUES ('ST_MAN',     'Stock Manager',                   5500,  8500 );  
INSERT INTO jobs(job_id, job_title, min_salary, max_salary) VALUES ('ST_CLERK',   'Stock Clerk',                     2008,  5000 );   
INSERT INTO jobs(job_id, job_title, min_salary, max_salary) VALUES ('SH_CLERK',   'Shipping Clerk',                  2500,  5500 );  
INSERT INTO jobs(job_id, job_title, min_salary, max_salary) VALUES ('IT_PROG',    'Programmer',                      4000,  10000);  
INSERT INTO jobs(job_id, job_title, min_salary, max_salary) VALUES ('MK_MAN',     'Marketing Manager',               9000,  15000);   
INSERT INTO jobs(job_id, job_title, min_salary, max_salary) VALUES ('MK_REP',     'Marketing Representative',        4000,  9000 );   
INSERT INTO jobs(job_id, job_title, min_salary, max_salary) VALUES ('HR_REP',     'Human Resources Representative',  4000,  9000 );  
INSERT INTO jobs(job_id, job_title, min_salary, max_salary) VALUES ('PR_REP',     'Public Relations Representative', 4500,  10500);  
END; 
/

--EMPLOYEES '1
BEGIN    
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (100, 'Michael',  'Scott',      'MSCOTT',      '515.123.4567', TO_DATE('17-06-2003', 'DD-MM-YYYY'), 'AD_PRES',    24000, NULL, NULL, 90 );       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (101, 'Pam',      'Beesly',     'PBEESLY',     '515.123.4568', TO_DATE('21-09-2005', 'DD-MM-YYYY'), 'AD_VP',      17000, NULL, 100,  90 );       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (102, 'Jim',      'Halpert',    'JHALPERT',    '515.123.4569', TO_DATE('13-01-2001', 'DD-MM-YYYY'), 'AD_VP',      17000, NULL, 100,  90 );       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (103, 'Dwight',   'Schrute',    'DSCHRUTE',    '590.423.4567', TO_DATE('03-01-2006', 'DD-MM-YYYY'), 'IT_PROG',    9000,  NULL, 102,  60 );      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (104, 'Stanley',  'Hudson',     'SHUDSON',     '590.423.4568', TO_DATE('21-05-2007', 'DD-MM-YYYY'), 'IT_PROG',    6000,  NULL, 103,  60 );      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (105, 'Angela',   'Martin',     'AMARTIN',     '590.423.4569', TO_DATE('25-06-2005', 'DD-MM-YYYY'), 'IT_PROG',    4800,  NULL, 103,  60 );      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (106, 'Kevin',    'Malone',     'KMALONE',     '590.423.4560', TO_DATE('05-02-2006', 'DD-MM-YYYY'), 'IT_PROG',    4800,  NULL, 103,  60 );       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (107, 'Phyllis',  'Vance',      'PVANCE',      '590.423.5567', TO_DATE('07-02-2007', 'DD-MM-YYYY'), 'IT_PROG',    4200,  NULL, 103,  60 );       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (108, 'Meredith', 'Palmer',     'MPALMER',     '515.124.4569', TO_DATE('17-08-2002', 'DD-MM-YYYY'), 'FI_MGR',     12008, NULL, 101,  100);    
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (109, 'Creed',    'Bratton',    'CBRATTON',    '515.124.4169', TO_DATE('16-08-2002', 'DD-MM-YYYY'), 'FI_ACCOUNT', 9000,  NULL, 108,  100);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (110, 'Oscar',    'Martinez',   'OMARTINEZ',   '515.124.4269', TO_DATE('28-09-2005', 'DD-MM-YYYY'), 'FI_ACCOUNT', 8200,  NULL, 108,  100);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (111, 'Ryan',     'Howard',     'RHOWARD',     '515.124.4369', TO_DATE('30-09-2005', 'DD-MM-YYYY'), 'FI_ACCOUNT', 7700,  NULL, 108,  100);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (112, 'Kelly',    'Kapoor',     'KKAPOOR',     '515.124.4469', TO_DATE('07-03-2006', 'DD-MM-YYYY'), 'FI_ACCOUNT', 7800,  NULL, 108,  100);       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (113, 'Andy',     'Bernard',    'ABERNARD',    '515.124.4567', TO_DATE('07-12-2007', 'DD-MM-YYYY'), 'FI_ACCOUNT', 6900,  NULL, 108,  100);       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (114, 'Toby',     'Flenderson', 'TFLENDERSON', '515.127.4561', TO_DATE('07-12-2002', 'DD-MM-YYYY'), 'PU_MAN',     11000, NULL, 100,  30 );       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (115, 'Darryl',   'Philbin',    'DPHILBIN',    '515.127.4562', TO_DATE('18-05-2003', 'DD-MM-YYYY'), 'PU_CLERK',   3100,  NULL, 114,  30 );       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (116, 'Erin',     'Hannon',     'EHANNON',     '515.127.4563', TO_DATE('24-12-2005', 'DD-MM-YYYY'), 'PU_CLERK',   2900,  NULL, 114,  30 );      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (117, 'Gabe',     'Lewis',      'GLEWIS',      '515.127.4564', TO_DATE('24-07-2005', 'DD-MM-YYYY'), 'PU_CLERK',   2800,  NULL, 114,  30 );       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (118, 'Jan',      'Levinson',   'JLEVINSON',   '515.127.4565', TO_DATE('15-11-2006', 'DD-MM-YYYY'), 'PU_CLERK',   2600,  NULL, 114,  30 );       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (119, 'Nelly',    'Bertram',    'NBERTRAM',    '515.127.4566', TO_DATE('10-08-2007', 'DD-MM-YYYY'), 'PU_CLERK',   2500,  NULL, 114,  30 );    
END; 
/

--EMPLOYEES '2
BEGIN 
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (120, 'Roy',     'Anderson',   'RANDERSON',   '650.123.1234', TO_DATE('18-07-2004', 'DD-MM-YYYY'), 'ST_MAN',   8000, NULL, 100, 50);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (121, 'Karen',   'Filippelli', 'KFILIPPELLI', '650.123.2234', TO_DATE('10-04-2005', 'DD-MM-YYYY'), 'ST_MAN',   8200, NULL, 100, 50);       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (122, 'Robert',  'California', 'RCALIFORNIA', '650.123.3234', TO_DATE('01-05-2003', 'DD-MM-YYYY'), 'ST_MAN',   7900, NULL, 100, 50);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (123, 'Hank',    'Dane',       'HDane',       '650.123.4234', TO_DATE('10-10-2005', 'DD-MM-YYYY'), 'ST_MAN',   6500, NULL, 100, 50);       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (124, 'Pete',    'Miller',     'PMILLER',     '650.123.5234', TO_DATE('16-11-2007', 'DD-MM-YYYY'), 'ST_MAN',   5800, NULL, 100, 50);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (125, 'Clark',   'Duke',       'CDUKE',       '650.124.1214', TO_DATE('16-07-2005', 'DD-MM-YYYY'), 'ST_CLERK', 3200, NULL, 120, 50);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (126, 'Nate',    'Proksch',    'NPROKSCH',    '650.124.1224', TO_DATE('28-09-2006', 'DD-MM-YYYY'), 'ST_CLERK', 2700, NULL, 120, 50);       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (127, 'Holly',   'Flax',       'HFLAX',       '650.124.1334', TO_DATE('14-01-2007', 'DD-MM-YYYY'), 'ST_CLERK', 2400, NULL, 120, 50);     
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (128, 'Calivin', 'Tenner',     'CTENNER',     '650.124.1434', TO_DATE('08-03-2008', 'DD-MM-YYYY'), 'ST_CLERK', 2200, NULL, 120, 50);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (129, 'Todd',    'Parker',     'TPARKER',     '650.124.5234', TO_DATE('20-08-2005', 'DD-MM-YYYY'), 'ST_CLERK', 3300, NULL, 121, 50);    
END; 
/

--EMPLOYEES '3
BEGIN 
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (130, 'Valeria',   'Kaplon',     'VKAPLON',     '650.124.6234',       TO_DATE('30-10-2005', 'DD-MM-YYYY'), 'ST_CLERK', 2800,  NULL, 121, 50);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (131, 'Cathy',     'Simms',      'CSIMMS',      '650.124.7234',       TO_DATE('16-02-2005', 'DD-MM-YYYY'), 'ST_CLERK', 2500,  NULL, 121, 50);        
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (132, 'Jo',        'Bennett',    'JBENNETT',    '650.124.8234',       TO_DATE('10-04-2007', 'DD-MM-YYYY'), 'ST_CLERK', 2100,  NULL, 121, 50);       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (133, 'Jason',     'Prichett',   'JPRICHETT',   '650.127.1934',       TO_DATE('14-06-2004', 'DD-MM-YYYY'), 'ST_CLERK', 3300,  NULL, 122, 50);       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (134, 'Gloria',    'Vegara',     'GVEGARA',     '650.127.1834',       TO_DATE('26-08-2006', 'DD-MM-YYYY'), 'ST_CLERK', 2900,  NULL, 122, 50);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (135, 'Claire',    'Dunphy',     'CDUNPHY',     '650.127.1734',       TO_DATE('12-12-2007', 'DD-MM-YYYY'), 'ST_CLERK', 2400,  NULL, 122, 50);       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (136, 'Phillip',   'Burrell',    'PBURRELL',    '650.127.1634',       TO_DATE('06-02-2008', 'DD-MM-YYYY'), 'ST_CLERK', 2200,  NULL, 122, 50);       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (137, 'Mitchell',  'Ferguson',   'MFERGUSON',   '650.121.1234',       TO_DATE('14-07-2003', 'DD-MM-YYYY'), 'ST_CLERK', 3600,  NULL, 123, 50);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (138, 'Cameron',   'Tucker',     'CTUCKER',     '650.121.2034',       TO_DATE('26-10-2005', 'DD-MM-YYYY'), 'ST_CLERK', 3200,  NULL, 123, 50);        
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (139, 'Manuel',    'Delgado',    'MDELGADO',    '650.121.2019',       TO_DATE('12-02-2006', 'DD-MM-YYYY'), 'ST_CLERK', 2700,  NULL, 123, 50);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (140, 'Lucas',     'Novakovski', 'LNOVAKOVSKI', '650.121.1834',       TO_DATE('06-04-2006', 'DD-MM-YYYY'), 'ST_CLERK', 2500,  NULL, 123, 50);     
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (141, 'Haley',     'Marks',      'HMARKS',      '650.121.8009',       TO_DATE('17-10-2003', 'DD-MM-YYYY'), 'ST_CLERK', 3500,  NULL, 124, 50);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (142, 'Alexandra', 'Smith',      'ASMITH',      '650.121.2994',       TO_DATE('29-01-2005', 'DD-MM-YYYY'), 'ST_CLERK', 3100,  NULL, 124, 50);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (143, 'Lillian',   'Summer',     'LSUMMER',     '650.121.2874',       TO_DATE('15-03-2006', 'DD-MM-YYYY'), 'ST_CLERK', 2600,  NULL, 124, 50);     
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (144, 'Fulgencio', 'Pablosos',   'FPABLOSOS',   '650.121.2004',       TO_DATE('09-07-2006', 'DD-MM-YYYY'), 'ST_CLERK', 2500,  NULL, 124, 50);    
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (145, 'Dylan',     'Marshall',   'DMARSHALL',   '011.44.1344.429268', TO_DATE('01-10-2004', 'DD-MM-YYYY'), 'SA_MAN',   14000, .4,   100, 80);     
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (146, 'Rachel',    'Green',      'RGREEN',      '011.44.1344.467268', TO_DATE('05-01-2005', 'DD-MM-YYYY'), 'SA_MAN',   13500, .3,   100, 80);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (147, 'Monica',    'Geller',     'MGELLER',     '011.44.1344.429278', TO_DATE('10-03-2005', 'DD-MM-YYYY'), 'SA_MAN',   12000, .3,   100, 80);       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (148, 'Phoebe',    'Buffay',     'PBUFFAY',     '011.44.1344.619268', TO_DATE('15-10-2007', 'DD-MM-YYYY'), 'SA_MAN',   11000, .3,   100, 80);    
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (149, 'Ursula',    'Buffay',     'UBUFFAY',     '011.44.1344.429018', TO_DATE('29-01-2008', 'DD-MM-YYYY'), 'SA_MAN',   10500, .2,   100, 80);    
END;
/

--EMPLOYEES '4
BEGIN
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (150, 'Joey',     'Tribbiani',  'JTRIBBIANI',  '011.44.1344.129268', TO_DATE('30-01-2005', 'DD-MM-YYYY'), 'SA_REP', 10000, .3,  145, 80);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (151, 'Chandler', 'Bing',       'CBING',       '011.44.1344.345268', TO_DATE('24-03-2005', 'DD-MM-YYYY'), 'SA_REP', 9500,  .25, 145, 80);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (152, 'Ross',     'Geller',     'RGELLER',     '011.44.1344.478968', TO_DATE('20-08-2005', 'DD-MM-YYYY'), 'SA_REP', 9000,  .25, 145, 80);       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (153, 'Gunther',  'Tyler',      'GTYLER',      '011.44.1344.498718', TO_DATE('30-03-2006', 'DD-MM-YYYY'), 'SA_REP', 8000,  .2,  145, 80);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (154, 'Jack',     'Gould',      'JGOULD',      '011.44.1344.987668', TO_DATE('09-12-2006', 'DD-MM-YYYY'), 'SA_REP', 7500,  .2,  145, 80);     
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (155, 'Janice',   'Litman',     'JLITMAN',     '011.44.1344.486508', TO_DATE('23-11-2007', 'DD-MM-YYYY'), 'SA_REP', 7000,  .15, 145, 80);     
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (156, 'Judy',     'Pickles',    'JPICKLES',    '011.44.1345.429268', TO_DATE('30-01-2004', 'DD-MM-YYYY'), 'SA_REP', 10000, .35, 146, 80);     
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (157, 'Mike',     'Hanningan',  'MHANNINGAN',  '011.44.1345.929268', TO_DATE('04-03-2004', 'DD-MM-YYYY'), 'SA_REP', 9500,  .35, 146, 80);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (158, 'Carol',    'Willick',    'CWILLICK',    '011.44.1345.829268', TO_DATE('01-08-2004', 'DD-MM-YYYY'), 'SA_REP', 9000,  .35, 146, 80);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (159, 'Emily',    'Waltham',    'EWALTHAM',    '011.44.1345.729268', TO_DATE('10-03-2005', 'DD-MM-YYYY'), 'SA_REP', 8000,  .3,  146, 80);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (160, 'Susan',    'Bunch',      'SBUNCH',      '011.44.1345.629268', TO_DATE('15-12-2005', 'DD-MM-YYYY'), 'SA_REP', 7500,  .3,  146, 80);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (161, 'Richard',  'Burke',      'RBURKE',      '011.44.1345.529268', TO_DATE('03-11-2006', 'DD-MM-YYYY'), 'SA_REP', 7000,  .25, 146, 80);     
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (162, 'Estelle',  'Leonard',    'ELEONARD',    '011.44.1346.129268', TO_DATE('11-11-2005', 'DD-MM-YYYY'), 'SA_REP', 10500, .25, 147, 80);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (163, 'Frank',    'Buffay',     'FBUFFAY',     '011.44.1346.229268', TO_DATE('19-03-2007', 'DD-MM-YYYY'), 'SA_REP', 9500,  .15, 147, 80);       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (164, 'Charlie',  'Wheeler',    'CWHEELER',    '011.44.1346.329268', TO_DATE('24-01-2008', 'DD-MM-YYYY'), 'SA_REP', 7200,  .10, 147, 80);       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (165, 'Julie',    'Tom',        'JTOM',        '011.44.1346.529268', TO_DATE('23-02-2008', 'DD-MM-YYYY'), 'SA_REP', 6800,  .1,  147, 80);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (166, 'Ben',      'Sprouse',    'BSPROUSE',    '011.44.1346.629268', TO_DATE('24-03-2008', 'DD-MM-YYYY'), 'SA_REP', 6400,  .10, 147, 80);     
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (167, 'Mona',     'Somerville', 'MSOMERVILLE', '011.44.1346.729268', TO_DATE('21-04-2008', 'DD-MM-YYYY'), 'SA_REP', 6200,  .10, 147, 80);     
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (168, 'Tag',      'Jones',      'TJONES',      '011.44.1343.929268', TO_DATE('11-03-2005', 'DD-MM-YYYY'), 'SA_REP', 11500, .25, 148, 80);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (169, 'Janine',   'Lecroix',    'JLECROIX',    '011.44.1343.829268', TO_DATE('23-03-2006', 'DD-MM-YYYY'), 'SA_REP', 10000, .20, 148, 80);    
END;
/

--EMPLOYEES '5
BEGIN  
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (170, 'Barry',     'Farber',   'BFARBER',   '011.44.1343.729268', TO_DATE('24-01-2006', 'DD-MM-YYYY'), 'SA_REP',   9600,  .20,  148, 80  );     
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (171, 'Mark',      'Robinson', 'MROBINSON', '011.44.1343.629268', TO_DATE('23-02-2007', 'DD-MM-YYYY'), 'SA_REP',   7400,  .15,  148, 80  );      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (172, 'Alice',     'Knight',   'AKNIGHT',   '011.44.1343.529268', TO_DATE('24-03-2007', 'DD-MM-YYYY'), 'SA_REP',   7300,  .15,  148, 80  );       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (173, 'Pete',      'Becker',   'PBECKER',   '011.44.1343.329268', TO_DATE('21-04-2008', 'DD-MM-YYYY'), 'SA_REP',   6100,  .10,  148, 80  );      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (174, 'Kathy',     'Brewster', 'KBREWSTER', '011.44.1644.429267', TO_DATE('11-05-2004', 'DD-MM-YYYY'), 'SA_REP',   11000, .30,  149, 80  );      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (175, 'Amanda',    'Long',     'ALONG',     '011.44.1644.429266', TO_DATE('19-03-2005', 'DD-MM-YYYY'), 'SA_REP',   8800,  .25,  149, 80  );      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (176, 'Larry',     'Heckles',  'LHECKLES',  '011.44.1644.429265', TO_DATE('24-03-2006', 'DD-MM-YYYY'), 'SA_REP',   8600,  .20,  149, 80  );    
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (177, 'Steve',     'Zelner',   'SZELNER',   '011.44.1644.429264', TO_DATE('23-04-2006', 'DD-MM-YYYY'), 'SA_REP',   8400,  .20,  149, 80  );    
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (178, 'Mike',      'Treeger',  'MTREEGER',  '011.44.1644.429263', TO_DATE('24-05-2007', 'DD-MM-YYYY'), 'SA_REP',   7000,  .15,  149, NULL);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (179, 'Nora',      'Tyler',    'NTYLER',    '011.44.1644.429262', TO_DATE('04-01-2008', 'DD-MM-YYYY'), 'SA_REP',   6200,  .10,  149, 80  );      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (180, 'Joshua',    'Burgin',   'JBURGIN',   '650.507.9876',       TO_DATE('24-01-2006', 'DD-MM-YYYY'), 'SH_CLERK', 3200,  NULL, 120, 50  );      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (181, 'Elizabeth', 'Stevens',  'ESTEVENS',  '650.507.9877',       TO_DATE('23-02-2006', 'DD-MM-YYYY'), 'SH_CLERK', 3100,  NULL, 120, 50  );      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (182, 'Paolo',     'Fusco',    'PFUSCO',    '650.507.9878',       TO_DATE('21-06-2007', 'DD-MM-YYYY'), 'SH_CLERK', 2500,  NULL, 120, 50  );      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (183, 'Jasmine',   'Mann',     'JMANN',     '650.507.9879',       TO_DATE('03-02-2008', 'DD-MM-YYYY'), 'SH_CLERK', 2800,  NULL, 120, 50  );     
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (184, 'David',     'Azaria',   'DAZARIA',   '650.509.1876',       TO_DATE('27-01-2004', 'DD-MM-YYYY'), 'SH_CLERK', 4200,  NULL, 121, 50  );       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (185, 'Gary',      'Rapaport', 'GRAPAPORT', '650.509.2876',       TO_DATE('20-02-2005', 'DD-MM-YYYY'), 'SH_CLERK', 4100,  NULL, 121, 50  );      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (186, 'Sophie',    'Dean',     'SDEAN',     '650.509.3876',       TO_DATE('24-06-2006', 'DD-MM-YYYY'), 'SH_CLERK', 3400,  NULL, 121, 50  );    
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (187, 'Leonard' ,  'Green',    'LGREEN',    '650.509.4876',       TO_DATE('07-02-2007', 'DD-MM-YYYY'), 'SH_CLERK', 3000,  NULL, 121, 50  );      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (188, 'Doug',      'McMurray', 'DMCMURRAY', '650.505.1876',       TO_DATE('14-06-2005', 'DD-MM-YYYY'), 'SH_CLERK', 3800,  NULL, 122, 50  );    
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (189, 'Kate',      'Miller',   'KMILLER',   '650.505.2876',       TO_DATE('13-08-2005', 'DD-MM-YYYY'), 'SH_CLERK', 3600,  NULL, 122, 50  );    
END;
/

--EMPLOYEES '6
BEGIN 
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (190, 'Terry',    'Wright',     'TWRIGHT',     '650.505.3876', TO_DATE('11-07-2006', 'DD-MM-YYYY'), 'SH_CLERK',   2900,  NULL, 122, 50 );      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (191, 'Andy',     'Devine',     'ADEVINE',     '650.505.4876', TO_DATE('19-12-2007', 'DD-MM-YYYY'), 'SH_CLERK',   2500,  NULL, 122, 50 );       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (192, 'Frank',    'Dunphy',     'FDUNPHY',     '650.501.1876', TO_DATE('04-02-2004', 'DD-MM-YYYY'), 'SH_CLERK',   4000,  NULL, 123, 50 );      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (193, 'Margaret', 'Kramer',     'MKRAMER',     '650.501.2876', TO_DATE('03-03-2005', 'DD-MM-YYYY'), 'SH_CLERK',   3900,  NULL, 123, 50 );      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (194, 'Pameron',  'Tucker',     'PTUCKER',     '650.501.3876', TO_DATE('01-07-2006', 'DD-MM-YYYY'), 'SH_CLERK',   3200,  NULL, 123, 50 );      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (195, 'Ben',      'Mande',      'BMANDE',      '650.501.4876', TO_DATE('17-03-2007', 'DD-MM-YYYY'), 'SH_CLERK',   2800,  NULL, 123, 50 );       
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (196, 'Ronaldo',  'Barillas',   'RBARILLAS',   '650.507.9811', TO_DATE('24-04-2006', 'DD-MM-YYYY'), 'SH_CLERK',   3100,  NULL, 124, 50 );     
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (197, 'Longinus', 'Daniels',    'LDANIELS',    '650.507.9822', TO_DATE('23-05-2006', 'DD-MM-YYYY'), 'SH_CLERK',   3000,  NULL, 124, 50 );    
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (198, 'Pepper',   'Saltzman',   'PSALTZMAN',   '650.507.9833', TO_DATE('21-06-2007', 'DD-MM-YYYY'), 'SH_CLERK',   2600,  NULL, 124, 50 );      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (199, 'Ruben',    'McNeil',     'RMCNEIL',     '650.507.9844', TO_DATE('13-01-2008', 'DD-MM-YYYY'), 'SH_CLERK',   2600,  NULL, 124, 50 );     
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (200, 'Dede',     'Longs',      'DLONGS',      '515.123.4444', TO_DATE('17-09-2003', 'DD-MM-YYYY'), 'AD_ASST',    4400 , NULL, 101, 10 );    
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (201, 'Gil',      'Thorpe',     'GTHORPE',     '515.123.5555', TO_DATE('17-02-2004', 'DD-MM-YYYY'), 'MK_MAN',     13000, NULL, 100, 20 );     
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (202, 'Sal',      'Banks',      'SBANKS',      '603.123.6666', TO_DATE('17-08-2005', 'DD-MM-YYYY'), 'MK_REP',     6000,  NULL, 201, 20 );     
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (203, 'Rainer',   'Shine',      'RSHINE',      '515.123.7777', TO_DATE('07-06-2002', 'DD-MM-YYYY'), 'HR_REP',     6500 , NULL, 101, 40 );    
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (204, 'Shorty',   'Palminteri', 'SPALMINTERI', '515.123.8888', TO_DATE('07-06-2002', 'DD-MM-YYYY'), 'PR_REP',     10000, NULL, 101, 70 );    
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (205, 'Barb',     'Weston',     'BWESTON',     '515.123.8080', TO_DATE('07-06-2002', 'DD-MM-YYYY'), 'AC_MGR',     12008, NULL, 101, 110);      
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES (206, 'Sanjay',   'Partha',     'SPARTHA',     '515.123.8181', TO_DATE('07-06-2002', 'DD-MM-YYYY'), 'AC_ACCOUNT', 8300,  NULL, 205, 110);    
END;
/


--JOB_HISTORY
BEGIN  
INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)  VALUES (102, TO_DATE('13-01-2001', 'DD-MM-YYYY'), TO_DATE('24-07-2006', 'DD-MM-YYYY'), 'IT_PROG',    60 );   
INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)  VALUES (101, TO_DATE('21-09-1997', 'DD-MM-YYYY'), TO_DATE('27-10-2001', 'DD-MM-YYYY'), 'AC_ACCOUNT', 110);   
INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)  VALUES (101, TO_DATE('28-10-2001', 'DD-MM-YYYY'), TO_DATE('15-03-2005', 'DD-MM-YYYY'), 'AC_MGR',     110);   
INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)  VALUES (201, TO_DATE('17-02-2004', 'DD-MM-YYYY'), TO_DATE('19-12-2007', 'DD-MM-YYYY'), 'MK_REP',     20 );  
INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)  VALUES (114, TO_DATE('24-03-2006', 'DD-MM-YYYY'), TO_DATE('31-12-2007', 'DD-MM-YYYY'), 'ST_CLERK',   50 );  
INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)  VALUES (122, TO_DATE('01-01-2007', 'DD-MM-YYYY'), TO_DATE('31-12-2007', 'DD-MM-YYYY'), 'ST_CLERK',   50 );  
INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)  VALUES (200, TO_DATE('17-09-1995', 'DD-MM-YYYY'), TO_DATE('17-06-2001', 'DD-MM-YYYY'), 'AD_ASST',    90 );  
INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)  VALUES (176, TO_DATE('24-03-2006', 'DD-MM-YYYY'), TO_DATE('31-12-2006', 'DD-MM-YYYY'), 'SA_REP',     80 );  
INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)  VALUES (176, TO_DATE('01-01-2007', 'DD-MM-YYYY'), TO_DATE('31-12-2007', 'DD-MM-YYYY'), 'SA_MAN',     80 );  
INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)  VALUES (200, TO_DATE('01-07-2002', 'DD-MM-YYYY'), TO_DATE('31-12-2006', 'DD-MM-YYYY'), 'AC_ACCOUNT', 90 );  
END; 
/

--włączenie ograniczenia na tabeli DEPARTMENTS
ALTER TABLE departments   
  ENABLE CONSTRAINT dept_mgr_fk;


--CUSTOMERS
BEGIN
INSERT INTO customers(first_name, last_name, is_company) VALUES ('Jack',    'Smith',    'N'); 
INSERT INTO customers(first_name, last_name, is_company) VALUES ('Carol',   'Geller',   'T'); 
INSERT INTO customers(first_name, last_name, is_company) VALUES ('Kate',    'Bush',     'N'); 
INSERT INTO customers(first_name, last_name, is_company) VALUES ('Tomas',   'Novak',    'T'); 
INSERT INTO customers(first_name, last_name, is_company) VALUES ('Jim',     'Hansen',   'N');  
INSERT INTO customers(first_name, last_name, is_company) VALUES ('Ann',     'Brown',    'T'); 
INSERT INTO customers(first_name, last_name, is_company) VALUES ('Jenifer', 'Dowson',   'N'); 
INSERT INTO customers(first_name, last_name, is_company) VALUES ('Robert',  'Timenson', 'T'); 
INSERT INTO customers(first_name, last_name, is_company) VALUES ('Max',     'McBeal',   'N'); 
INSERT INTO customers(first_name, last_name, is_company) VALUES ('Briget',  'Jones',    'T'); 
INSERT INTO customers(first_name, last_name, is_company) VALUES ('John',    'Shelby',   'N'); 
INSERT INTO customers(first_name, last_name, is_company) VALUES ('Andrew',  'Adams',    'T'); 
END;
/


--PRODUCTS
BEGIN 
INSERT INTO products(product_name, price) VALUES ('TV',               400);
INSERT INTO products(product_name, price) VALUES ('washing machine',  350);
INSERT INTO products(product_name, price) VALUES ('computer',         800);
INSERT INTO products(product_name, price) VALUES ('termomix',         600);
INSERT INTO products(product_name, price) VALUES ('vacuum cleaner',   250);
INSERT INTO products(product_name, price) VALUES ('smartphone',       550);
INSERT INTO products(product_name, price) VALUES ('smartwatch',       100);
INSERT INTO products(product_name, price) VALUES ('soundbar',         230);
INSERT INTO products(product_name, price) VALUES ('DVD player',       300);
INSERT INTO products(product_name, price) VALUES ('radio',             70);
INSERT INTO products(product_name, price) VALUES ('air conditioner',  620);
INSERT INTO products(product_name, price) VALUES ('fridge',           580);
INSERT INTO products(product_name, price) VALUES ('microwave',        140);
INSERT INTO products(product_name, price) VALUES ('kettle',            55);
INSERT INTO products(product_name, price) VALUES ('coffee machine',   490);
INSERT INTO products(product_name, price) VALUES ('hair dryer',        90);
INSERT INTO products(product_name, price) VALUES ('oven',             320);
INSERT INTO products(product_name, price) VALUES ('waffle maker',     100);
INSERT INTO products(product_name, price) VALUES ('electric scooter', 700);
END;
/


--CUSTOMER_ORDERS
BEGIN
INSERT INTO customer_orders(order_date, customer_id, product_id, quantity) VALUES (TO_DATE('2021-08-16', 'YYYY-MM-DD'), 2, 1,   200 ); 
INSERT INTO customer_orders(order_date, customer_id, product_id, quantity) VALUES (TO_DATE('2021-06-18', 'YYYY-MM-DD'), 4, 2,   168 );
INSERT INTO customer_orders(order_date, customer_id, product_id, quantity) VALUES (TO_DATE('2021-11-05', 'YYYY-MM-DD'), 1, 3,     2 );
INSERT INTO customer_orders(order_date, customer_id, product_id, quantity) VALUES (TO_DATE('2021-12-31', 'YYYY-MM-DD'), 5, 4,     1 );
INSERT INTO customer_orders(order_date, customer_id, product_id, quantity) VALUES (TO_DATE('2021-09-05', 'YYYY-MM-DD'), 3, 5,     3 );
INSERT INTO customer_orders(order_date, customer_id, product_id, quantity) VALUES (TO_DATE('2021-01-14', 'YYYY-MM-DD'), 6, 18,  335 );
INSERT INTO customer_orders(order_date, customer_id, product_id, quantity) VALUES (TO_DATE('2021-06-22', 'YYYY-MM-DD'), 8, 17,  840 );
INSERT INTO customer_orders(order_date, customer_id, product_id, quantity) VALUES (TO_DATE('2021-12-10', 'YYYY-MM-DD'), 10, 16, 200 );
INSERT INTO customer_orders(order_date, customer_id, product_id, quantity) VALUES (TO_DATE('2021-12-01', 'YYYY-MM-DD'), 7, 15,    1 );
INSERT INTO customer_orders(order_date, customer_id, product_id, quantity) VALUES (TO_DATE('2022-01-10', 'YYYY-MM-DD'), 12, 14, 200 );
INSERT INTO customer_orders(order_date, customer_id, product_id, quantity) VALUES (TO_DATE('2022-01-16', 'YYYY-MM-DD'), 4, 13,  150 );
INSERT INTO customer_orders(order_date, customer_id, product_id, quantity) VALUES (TO_DATE('2022-01-23', 'YYYY-MM-DD'), 9, 12,    2 );
INSERT INTO customer_orders(order_date, customer_id, product_id, quantity) VALUES (TO_DATE('2022-02-07', 'YYYY-MM-DD'), 11, 9,    1 );
INSERT INTO customer_orders(order_date, customer_id, product_id, quantity) VALUES (TO_DATE('2022-02-13', 'YYYY-MM-DD'), 5, 10,    3 );
INSERT INTO customer_orders(order_date, customer_id, product_id, quantity) VALUES (TO_DATE('2022-03-03', 'YYYY-MM-DD'), 1, 6,     2 );
INSERT INTO customer_orders(order_date, customer_id, product_id, quantity) VALUES (TO_DATE('2022-03-17', 'YYYY-MM-DD'), 4, 7,   840 );
INSERT INTO customer_orders(order_date, customer_id, product_id, quantity) VALUES (TO_DATE('2022-03-29', 'YYYY-MM-DD'), 2, 8,   200 );
INSERT INTO customer_orders(order_date, customer_id, product_id, quantity) VALUES (TO_DATE('2022-04-06', 'YYYY-MM-DD'), 9, 9,     1 );
END;
/


--ORDER_PAYMENTS
BEGIN
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2021-08-16', 'YYYY-MM-DD'), 1,  'PENDING' );
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2021-08-16', 'YYYY-MM-DD'), 1,  'APPROVED');
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2021-06-18', 'YYYY-MM-DD'), 2,  'PENDING' );
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2021-06-18', 'YYYY-MM-DD'), 2,  'APPROVED');
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2021-11-05', 'YYYY-MM-DD'), 3,  'PENDING' );
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2021-11-05', 'YYYY-MM-DD'), 3,  'APPROVED');
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2021-12-31', 'YYYY-MM-DD'), 4,  'CANCELED');
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2021-12-19', 'YYYY-MM-DD'), 4,  'APPROVED');
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2021-09-05', 'YYYY-MM-DD'), 5,  'PENDING' );
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2021-09-05', 'YYYY-MM-DD'), 5,  'APPROVED');
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2021-01-14', 'YYYY-MM-DD'), 6,  'PENDING' );
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2021-01-14', 'YYYY-MM-DD'), 6,  'APPROVED');
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2021-06-22', 'YYYY-MM-DD'), 7,  'PENDING' );
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2021-06-22', 'YYYY-MM-DD'), 7,  'APPROVED');
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2021-12-10', 'YYYY-MM-DD'), 8,  'APPROVED');
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2021-12-27', 'YYYY-MM-DD'), 8,  'CANCELED');
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2021-12-01', 'YYYY-MM-DD'), 9,  'PENDING' );
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2021-12-01', 'YYYY-MM-DD'), 9,  'APPROVED');
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2022-01-10', 'YYYY-MM-DD'), 10, 'PENDING' );
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2022-01-10', 'YYYY-MM-DD'), 10, 'APPROVED');
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2022-01-16', 'YYYY-MM-DD'), 11, 'PENDING' );
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2022-01-16', 'YYYY-MM-DD'), 11, 'APPROVED');
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2022-01-23', 'YYYY-MM-DD'), 12, 'APPROVED');
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2022-02-15', 'YYYY-MM-DD'), 12, 'CANCELED');
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2022-02-07', 'YYYY-MM-DD'), 13, 'PENDING' );
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2022-02-07', 'YYYY-MM-DD'), 13, 'APPROVED');
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2022-02-13', 'YYYY-MM-DD'), 14, 'PENDING' );
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2022-02-13', 'YYYY-MM-DD'), 14, 'APPROVED');
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2022-03-03', 'YYYY-MM-DD'), 15, 'PENDING' );
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2022-03-03', 'YYYY-MM-DD'), 15, 'APPROVED');
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2022-03-17', 'YYYY-MM-DD'), 16, 'APPROVED');
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2022-03-31', 'YYYY-MM-DD'), 16, 'CANCELED');
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2022-03-29', 'YYYY-MM-DD'), 17, 'PENDING' );
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2022-03-29', 'YYYY-MM-DD'), 17, 'APPROVED');
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2022-04-06', 'YYYY-MM-DD'), 18, 'PENDING' );
INSERT INTO order_payments(payment_date, order_ID, status) VALUES (TO_DATE('2022-04-06', 'YYYY-MM-DD'), 18, 'APPROVED');
END;
/


--JOB_LIMITS
BEGIN
INSERT INTO job_limits(job_id, days_left) VALUES ('AD_ASST',    25);
INSERT INTO job_limits(job_id, days_left) VALUES ('FI_ACCOUNT', 80);
INSERT INTO job_limits(job_id, days_left) VALUES ('AC_ACCOUNT', 92);
INSERT INTO job_limits(job_id, days_left) VALUES ('ST_MAN',     15);
INSERT INTO job_limits(job_id, days_left) VALUES ('ST_CLERK',   65);
INSERT INTO job_limits(job_id, days_left) VALUES ('IT_PROG',    40);
INSERT INTO job_limits(job_id, days_left) VALUES ('PU_CLERK',   41);
INSERT INTO job_limits(job_id, days_left) VALUES ('PR_REP',     38);
END;
/


--PROJECTS
BEGIN
INSERT INTO projects(project_name, project_start_date, project_end_date, project_dept, status) VALUES ('Maintain Support Systems',     TO_DATE('2021-12-01','YYYY-MM-DD'), TO_DATE('2022-01-14','YYYY-MM-DD'), null, 'Closed' );
INSERT INTO projects(project_name, project_start_date, project_end_date, project_dept, status) VALUES ('Email Integration',            TO_DATE('2022-02-15','YYYY-MM-DD'), TO_DATE('2022-04-25','YYYY-MM-DD'), null, 'Open'   );
INSERT INTO projects(project_name, project_start_date, project_end_date, project_dept, status) VALUES ('Employee Satisfaction Survey', TO_DATE('2022-01-19','YYYY-MM-DD'), TO_DATE('2022-05-28','YYYY-MM-DD'), null, 'Open'   );
INSERT INTO projects(project_name, project_start_date, project_end_date, project_dept, status) VALUES ('Public Website',               TO_DATE('2022-11-15','YYYY-MM-DD'), TO_DATE('2022-11-30','YYYY-MM-DD'), null, 'Planned');
END;
/

--TASKS
BEGIN
INSERT INTO tasks(task_name, cost, budget, assigned_to, project_id) VALUES ('HR SOFTWARE NEEDS UPGRADE',                 3000, 3500, 203, 1);
INSERT INTO tasks(task_name, cost, budget, assigned_to, project_id) VALUES ('APPLY BILLING SYSTEM UPDATES',              500,  500,  203, 1);
INSERT INTO tasks(task_name, cost, budget, assigned_to, project_id) VALUES ('INVESTIGATE NEW VIRUS PROTECTION SOFTWARE', 150,  200,  105, 1);
INSERT INTO tasks(task_name, cost, budget, assigned_to, project_id) VALUES ('ARRANGE FOR HOLIDAY COVERAGE',              50,   0,    203, 1);
INSERT INTO tasks(task_name, cost, budget, assigned_to, project_id) VALUES ('COMPLETE PLAN',                             200,  200,  103, 2);
INSERT INTO tasks(task_name, cost, budget, assigned_to, project_id) VALUES ('CHECK SOFTWARE LICENSES',                   100,  100,  108, 2);
INSERT INTO tasks(task_name, cost, budget, assigned_to, project_id) VALUES ('GET RFPS FOR NEW SERVER',                   50,   100,  108, 2);
INSERT INTO tasks(task_name, cost, budget, assigned_to, project_id) VALUES ('PURCHASE BACKUP SERVER',                    2000, 2400, 108, 2);
INSERT INTO tasks(task_name, cost, budget, assigned_to, project_id) VALUES ('COMPLETE QUESTIONAIRE',                     350,  400,  110, 3);
INSERT INTO tasks(task_name, cost, budget, assigned_to, project_id) VALUES ('REVIEW WITH LEGAL',                         220,  230,  108, 3);
INSERT INTO tasks(task_name, cost, budget, assigned_to, project_id) VALUES ('PLAN ROLLOUT SCHEDULE',                     100,  110,  110, 3);
INSERT INTO tasks(task_name, cost, budget, assigned_to, project_id) VALUES ('DETERMINE HOST SERVER',                     75,   100,  101, 4);
INSERT INTO tasks(task_name, cost, budget, assigned_to, project_id) VALUES ('CHECK SOFTWARE LICENSES',                   120,  120,  106, 4);
INSERT INTO tasks(task_name, cost, budget, assigned_to, project_id) VALUES ('PURCHASE ADDITIONAL SOFTWARE LICENSES',     0,    1200, 106, 4);
INSERT INTO tasks(task_name, cost, budget, assigned_to, project_id) VALUES ('DEVELOP WEB PAGES',                         750,  1000, 104, 4);
INSERT INTO tasks(task_name, cost, budget, assigned_to, project_id) VALUES ('PLAN ROLLOUT SCHEDULE',                     120,  120,  106, 4);
END;
/
 

--dodanie kolumny EXPIRE_DATE do tabeli EMPLOYEES
ALTER TABLE employees 
	ADD expire_date DATE;


--update tabeli EMPLOYEES 
BEGIN
UPDATE employees SET expire_date = TO_DATE('2022-04-02', 'YYYY-MM-DD') WHERE employee_id = 200;
UPDATE employees SET expire_date = TO_DATE('2022-05-01', 'YYYY-MM-DD') WHERE employee_id = 111;
UPDATE employees SET expire_date = TO_DATE('2022-06-30', 'YYYY-MM-DD') WHERE employee_id = 112;
UPDATE employees SET expire_date = TO_DATE('2022-05-15', 'YYYY-MM-DD') WHERE employee_id = 109;
UPDATE employees SET expire_date = TO_DATE('2022-04-15', 'YYYY-MM-DD') WHERE employee_id = 104;
UPDATE employees SET expire_date = TO_DATE('2022-07-08', 'YYYY-MM-DD') WHERE employee_id = 106;
UPDATE employees SET expire_date = TO_DATE('2022-03-31', 'YYYY-MM-DD') WHERE employee_id = 204;
UPDATE employees SET expire_date = TO_DATE('2022-03-28', 'YYYY-MM-DD') WHERE employee_id = 115;
UPDATE employees SET expire_date = TO_DATE('2022-04-10', 'YYYY-MM-DD') WHERE employee_id = 117;
END;
/

COMMIT;