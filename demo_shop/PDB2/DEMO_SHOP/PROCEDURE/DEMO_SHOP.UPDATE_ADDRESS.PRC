CREATE OR REPLACE PROCEDURE DEMO_SHOP.update_address (p_customer_id NUMBER, p_address VARCHAR2)
AS
BEGIN
  UPDATE customers
  SET address = p_address
  WHERE customer_id = p_customer_id;
END;
/
