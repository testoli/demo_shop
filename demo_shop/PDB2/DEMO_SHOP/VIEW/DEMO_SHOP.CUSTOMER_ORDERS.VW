CREATE OR REPLACE FORCE VIEW DEMO_SHOP.CUSTOMER_ORDERS
(CUSTOMER_ID, FIRST_NAME, LAST_NAME, EMAIL, TOTAL_SPENT)
BEQUEATH DEFINER
AS 
SELECT c.customer_id, c.first_name, c.last_name, c.email
  , SUM(o.total_amount) as total_spent
  FROM customers c
  JOIN orders o ON c.customer_id = o.customer_id
  GROUP BY c.customer_id, c.first_name, c.last_name, c.email;
