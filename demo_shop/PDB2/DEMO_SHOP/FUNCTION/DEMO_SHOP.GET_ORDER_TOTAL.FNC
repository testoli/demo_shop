CREATE OR REPLACE FUNCTION DEMO_SHOP.get_order_total(p_order_id NUMBER)
RETURN NUMBER
AS
  v_total NUMBER;
BEGIN
  SELECT SUM(quantity * (SELECT price FROM products WHERE product_id = order_items.product_id))
  INTO v_total
  FROM order_items
  WHERE order_id = p_order_id;
  RETURN v_total;
END;
/
