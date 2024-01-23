CREATE OR REPLACE FORCE VIEW DEMO_SHOP.OW_RESTOCKLIST
(BIN, PART_ID, QTY_ON_HAND, RESTOCK_QTY)
BEQUEATH DEFINER
AS 
SELECT bin,
           part_id,
           qty_on_hand,
           restock_qty
      FROM ow_parts
     WHERE qty_on_hand < restock_qty;
