/* zestawienie budżetu, kosztu, oszczędności dotyczących projektów; */
SELECT 
	  pr.project_id
	, SUM(t.budget) total_budget
	, SUM(t.cost) total_cost
	, SUM(t.budget) - SUM(t.cost) savings
FROM projects pr
JOIN tasks t
ON pr.project_id = t.project_id
GROUP BY pr.project_id
ORDER BY savings DESC
;


/* zestawienie średnich wynagrodzeń wg stanowiska; */
SELECT 
      j.job_title
    , ROUND(AVG(e.salary)) avg_salary
FROM employees e
JOIN jobs j
ON j.job_id = e.job_id
GROUP BY j.job_title
;


/* zestawienie pracowników z uwzględnieniem dodatkowej prowizji przy wynagrodzeniu; */
SELECT 
      e.employee_id
    , e.last_name
    , j.job_title
    , NVL2(e.commission_pct, 'yes', 'no') commission_pct
FROM employees e
JOIN jobs j
ON e.job_id = j.job_id
ORDER BY e.employee_id
;


/* rankingi wynagrodzeń w całej firmie; */
SELECT 
	  last_name
	, salary
	, DENSE_RANK() OVER (ORDER BY salary DESC) AS ranking_place
FROM employees
;

SELECT 
	  last_name
	, salary
	, RANK() OVER (ORDER BY salary DESC) AS miejsce
FROM employees
;


/* numery rekordów w rankingu wynagrodzeń w zależności od managera (MANAGER_ID); */
SELECT 
	  manager_id
	, last_name
	, salary
	, ROW_NUMBER() OVER (PARTITION BY manager_id ORDER BY salary DESC) AS row_num
FROM employees
;


/* ranking wynagrodzeń w zależności od departamentu (DEPARTMENT_NAME) z wyłączeniem departamentów: 'Executive', 'Shipping', 'Sales'; */
SELECT 
	  department_name
	, last_name
	, salary
	, DENSE_RANK() OVER (PARTITION BY department_name ORDER BY salary DESC) AS ranking_place
FROM employees e 
JOIN departments d
ON e.department_id = d.department_id
WHERE department_name NOT IN  ('Executive', 'Shipping', 'Sales')
ORDER BY department_name DESC, ranking_place
;


/* ranking procentowy ze wzgledu na koszt zamówienia; */
SELECT 
	  co.order_id
	, co.quantity
	, p.price
	, (co.quantity * p.price) order_cost
	, ROUND(PERCENT_RANK() OVER (ORDER BY co.quantity * p.price DESC), 3) AS ranking_place
FROM customer_orders co
JOIN products p 
ON co.product_id = p.product_id
;


/* ranking prowizji w zależnosci od stanowiska; */
SELECT 
	  e.last_name
	, j.job_title
	, e.commission_pct
	,DENSE_RANK() OVER (PARTITION BY j.job_title ORDER BY e.commission_pct DESC) AS ranking_place
FROM employees e
JOIN jobs j
ON e.job_id = j.job_id
WHERE e.commission_pct IS NOT NULL
;


/* ranking projektów które najwiecej zaoszczędziły; */
SELECT 
	  pr.project_id
	, SUM(t.budget) total_budget
	, SUM(t.cost) total_cost
	, SUM(t.budget) - SUM(t.cost) savings
	, DENSE_RANK() OVER (ORDER BY (SUM(t.budget) - SUM(t.cost)) DESC) AS ranking_place
FROM projects pr
JOIN tasks t
ON pr.project_id = t.project_id
GROUP BY pr.project_id
;


/* ranking stanowisk wg zakresów zarobków na danym stanowisku; */
SELECT 
	  job_title
	, min_salary
	, DENSE_RANK() OVER (ORDER BY min_salary DESC) AS ranking_place_min
	, max_salary
	, DENSE_RANK() OVER (ORDER BY max_salary DESC) AS ranking_place_max
FROM jobs
ORDER BY ranking_place_min, ranking_place_max
;


/* zestawienie pensji pracowników ze średnimi pensjami w danym departamencie; */
SELECT 
	  employee_id
	, last_name
	, department_id
	, salary
	, ROUND(AVG(salary) OVER (PARTITION BY department_id),2) AS avg_salary 
FROM employees
ORDER BY department_id
;


/* rozkład zarobków w danym departmencie z wykorzystaniem funkcji CUME_DIST() i PERCENT_RANK(); */
SELECT 
	  department_id
	, last_name
	, salary
	, ROUND(CUME_DIST() OVER (PARTITION BY department_id ORDER BY salary), 2) AS cd
FROM employees
WHERE department_id = 50
;

SELECT 
	  department_id
	, last_name
	, salary
	, ROUND(PERCENT_RANK() OVER (PARTITION BY department_id ORDER BY salary), 4) AS cd
FROM employees
WHERE department_id = 50
;


/* przykład aktualizacji danych, zwracający nową pensję pracownika w zależności od aktualnych zarobków; */
UPDATE employees
SET salary =
        CASE
            WHEN salary < 5000 THEN salary * (1+20/100)
            WHEN salary BETWEEN 5000 AND 7000 THEN salary * (1+15/100)
            ELSE salary * (1+10/100)
        END
WHERE department_id = 60
;


/* podsumowanie zamówień per rok; */
SELECT EXTRACT(year FROM co.order_date)     year
     , SUM(co.quantity * p.price)           sum_per_year
     , ROUND(AVG(co.quantity * p.price), 2) avg_per_year
FROM customer_orders co
JOIN products p
ON co.product_id = p.product_id
GROUP BY EXTRACT(year FROM  co.order_date)
ORDER BY year
;


/* podsumowanie zamówień per miesiąc; */
SELECT EXTRACT(year FROM  co.order_date)     year
     , EXTRACT(month FROM  co.order_date)    month
     , SUM(co.quantity * p.price)            sum_per_month
     , ROUND(AVG(co.quantity * p.price), 2)  avg_per_month
FROM customer_orders co
JOIN products p
ON co.product_id = p.product_id
GROUP BY EXTRACT(year FROM  co.order_date)
       , EXTRACT(month FROM  co.order_date)
ORDER BY year, month
;


/* podsumowanie największego i najmniejszego zamówienia: */
-- CTE
WITH client_orders AS (SELECT co.customer_id client
							, SUM(co.quantity * p.price) order_cost
                        FROM customer_orders co
                        JOIN products p
                        ON co.product_id = p.product_id
                        GROUP BY co.customer_id
                        ORDER BY client)
SELECT MAX(order_cost) max_order
	 , MIN(order_cost) min_order 
FROM client_orders
;

--SUBQUERY 
SELECT MAX(order_cost) max_order
     , MIN(order_cost) min_order
FROM 	(
        SELECT co.customer_id client
             , SUM(co.quantity * p.price) order_cost
        FROM customer_orders co
        JOIN products p
        ON co.product_id = p.product_id
        GROUP BY co.customer_id
		)
;