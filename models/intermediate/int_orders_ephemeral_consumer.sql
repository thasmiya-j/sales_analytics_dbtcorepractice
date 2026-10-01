
SELECT
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_AMOUNT
FROM {{ ref('int_orders_ephemeral_demo') }}
WHERE ORDER_AMOUNT > 0