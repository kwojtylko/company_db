/* Przykład pakietu do zarządzania produktami; */
CREATE OR REPLACE PACKAGE manage_products
IS
    PROCEDURE add_product(in_prod_name IN products.product_name%TYPE);
    PROCEDURE del_product(in_prod_id IN products.product_id%TYPE);
    PROCEDURE upd_product(in_prod_id IN products.product_id%TYPE
                        , in_prod_name IN products.product_name%TYPE);
    FUNCTION info_product(in_prod_id IN products.product_id%TYPE)
    RETURN products.product_name%TYPE;
    
END manage_products;
/

CREATE OR REPLACE PACKAGE BODY manage_products
IS
    PROCEDURE add_product(in_prod_name IN products.product_name%TYPE)
    IS
    BEGIN
        INSERT INTO products(product_name) VALUES (in_prod_name);
    END add_product;
    
    PROCEDURE del_product(in_prod_id IN products.product_id%TYPE)
    IS
    BEGIN
        DELETE FROM products
        WHERE product_id = in_prod_id;
    END del_product;
    
    PROCEDURE upd_product(in_prod_id IN products.product_id%TYPE
                        , in_prod_name IN products.product_name%TYPE)
    IS
    BEGIN
        UPDATE products
        SET product_name = in_prod_name
        WHERE product_id = in_prod_id;
    END upd_product;
    
	
    FUNCTION info_product (in_prod_id IN products.product_id%TYPE)
    RETURN products.product_name%TYPE
    IS
        v_info_prod products.product_name%TYPE;
    BEGIN
        SELECT product_name
        INTO v_info_prod
        FROM products
        WHERE product_id = in_prod_id;
        RETURN v_info_prod;
    END info_product;
    
END manage_products;
/


/* Przykład pakietu z przeciążoną:
- funkcją zwracającą najwyższą pensję w departamencie o id przekazanym w parametrze;
- funkcją zwracającą najwyższa pensję w danym departamencie na danym stanowisku (funkcja z dwoma parametrami) */
CREATE OR REPLACE PACKAGE get_salary
IS
    FUNCTION get_high_dept_salary(in_dept_id IN employees.department_id%TYPE)
    RETURN employees.salary%TYPE;
    FUNCTION get_high_dept_salary(in_dept_id IN employees.department_id%TYPE
                                , in_job_id IN employees.job_id%TYPE)
    RETURN employees.salary%TYPE;  
END get_salary;
/

CREATE OR REPLACE PACKAGE BODY get_salary
IS
    FUNCTION get_high_dept_salary(in_dept_id IN employees.department_id%TYPE)
    RETURN employees.salary%TYPE
    IS
        v_max_salary employees.salary%TYPE;
    BEGIN
        SELECT max(salary)
        INTO v_max_salary
        FROM employees
        WHERE department_id=in_dept_id;
        
        RETURN v_max_salary;
    END get_high_dept_salary;
    
    FUNCTION get_high_dept_salary(in_dept_id IN employees.department_id%TYPE
                                , in_job_id IN employees.job_id%TYPE)
    RETURN employees.salary%TYPE
    IS
        v_max_sal_job employees.salary%TYPE;
    BEGIN
        SELECT max(salary)
        INTO v_max_sal_job
        FROM employees
        WHERE department_id = in_dept_id AND job_id = in_job_id;
        
        RETURN v_max_sal_job;
    END get_high_dept_salary;
    
END get_salary;
/


/*  Przykład pakietu stanowiącego algorytm liczący detaliczną cenę produktu na podstawie historii sprzedaży;
	Podniesienie ceny produktu o 5% jeśli produkt został sprzedany w ilości przkraczającej 300 sztuk w ubiegłym miesiącu; */
CREATE OR REPLACE PACKAGE customer_orders_pkg
IS 
    PROCEDURE invalidate_orders;
    FUNCTION get_product_price (in_product_id IN products.product_id%TYPE
                                , in_date IN DATE)
            RETURN products.price%TYPE;
END;
/

CREATE OR REPLACE PACKAGE BODY customer_orders_pkg
IS
    PROCEDURE invalidate_orders
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
    
    FUNCTION get_product_price(in_product_id IN products.product_id%TYPE
                                , in_date IN DATE)
            RETURN products.price%TYPE
    IS
        v_sum NUMBER;
        v_new_price products.price%TYPE;
        v_limit_up NUMBER := 300;
        v_price_ind NUMBER := TO_NUMBER('0.05', '9.99');
    BEGIN
        SELECT SUM(quantity)
        INTO v_sum
        FROM customer_orders
        WHERE product_id = in_product_id
        AND order_date BETWEEN LAST_DAY(ADD_MONTHS(in_date, -2))+1 
        AND LAST_DAY(ADD_MONTHS(in_date, -1))
        ;
        
        IF v_sum > v_limit_up THEN
            SELECT price*(1+v_price_ind)
            INTO v_new_price
            FROM products
            WHERE product_id = in_product_id;
        END IF;
        
        RETURN v_new_price;
        
    END get_product_price;
END;
/