DECLARE

v_customer_ID CUSTOMERS.CUSTOMER_ID%TYPE;
v_customer_name CUSTOMERS.CUSTOMER_NAME%TYPE;
v_city CUSTOMERS.CITY%TYPE;
v_age CUSTOMERS.AGE%TYPE;

CURSOR get_customers IS
    SELECT *
    FROM customers;

BEGIN
  OPEN get_customers;
--   FETCH get_customers INTO v_customer_ID, v_customer_name, v_city, v_age;
  DBMS_OUTPUT.put_line('Our customer is '|| TO_CHAR( v_customer_name ||' from ' || v_city || ',age ' || v_age || ' with customer ID ' || v_customer_ID));
  CLOSE get_customers;
END;








