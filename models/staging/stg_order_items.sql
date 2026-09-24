SELECT 
       ORDER_ID,
       ORDER_ITEM_ID,
       PRODUCT_ID,
       QUANTITY,
       UNIT_PRICE
FROM {{ref('order_items')}}