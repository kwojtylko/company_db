/*  Widok EMP_DETAILS_VIEW łączy tabele EMPLOYEES, JOBS, DEPARTMENTS, COUNTRIES AND LOCATIONS;
	Zawiera informacje o pracownikach;	*/
CREATE OR REPLACE VIEW emp_details_view  
	( employee_id
	, job_id
	, manager_id
	, department_id
	, location_id
	, country_id
	, first_name
	, last_name
	, salary
	, commission_pct
	, department_name
	, job_title
	, city
	, state_province
	, country_name
	, region_name)  
AS SELECT  
	  e.employee_id   
	, e.job_id
	, e.manager_id   
	, e.department_id  
	, d.location_id  
	, l.country_id  
	, e.first_name  
	, e.last_name  
	, e.salary  
	, e.commission_pct  
	, d.department_name  
	, j.job_title  
	, l.city  
	, l.state_province  
	, c.country_name  
	, r.region_name  
FROM  
	  employees e  
	, departments d  
	, jobs j  
	, locations l  
	, countries c  
	, regions r  
WHERE e.department_id = d.department_id  
	AND d.location_id = l.location_id  
	AND l.country_id = c.country_id  
	AND c.region_id = r.region_id  
	AND j.job_id = e.job_id  
ORDER BY e.employee_id	
WITH READ ONLY;


/*  Widok DEPT_DETAILS_VIEW łączy tabele DEPARTMENTS, EMPLOYEES, LOCATIONS, COUNTRIES, REGIONS;
	Zawiera informacje o departamentach firmy;	*/
CREATE OR REPLACE VIEW dept_details_view
    ( department_id
    , department_name
    , manager_id
    , first_name
    , last_name
    , location_id
    , street_address
    , postal_code
    , city
    , state_province
    , country_id
    , country_name
    , region_id
    , region_name)
AS SELECT
      d.department_id
    , d.department_name
    , d.manager_id
    , e.first_name
    , e.last_name
    , l.location_id
    , l.street_address
    , l.postal_code
    , l.city
    , l.state_province
    , c.country_id
    , c.country_name
    , r.region_id
    , r.region_name
FROM
      departments d
    , employees e
    , locations l
    , countries c
    , regions r
WHERE d.manager_id = e.employee_id
	AND d.location_id = l.location_id
	AND l.country_id = c.country_id
	AND c.region_id = r.region_id
ORDER BY d.department_id
WITH  READ ONLY;


/*  Widok ORD_DETAILS_VIEW łączy tabele CUSTOMER_ORDERS, CUSTOMERS, PRODUCTS, ORDER_PAYMENT;
	Zawiera informacje o zamówieniach; */
CREATE OR REPLACE VIEW ord_details_view
    ( order_id
    , order_date
    , customer_id
    , first_name
    , last_name
    , is_company
    , product_id
    , product_name
    , price_per_item
    , quantity
    , payment_id
    , payment_date
    , order_cost
    , payment_status
    )
AS SELECT
      co.order_id
    , co.order_date
    , co.customer_id
    , c.first_name
    , c.last_name
    , c.is_company
    , co.product_id
    , p.product_name
    , p.price
    , co.quantity
    , op.payment_id
    , op.payment_date
    , (p.price * co.quantity)
    , op.status
FROM
      customer_orders co
    , customers c
    , products p
    , order_payments op
WHERE co.customer_id = c.customer_id
    AND co.order_id = op.order_id
    AND co.product_id = p.product_id
ORDER BY co.order_id
WITH READ ONLY;