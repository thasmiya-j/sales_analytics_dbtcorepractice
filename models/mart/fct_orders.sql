SELECT
    order_id,
    order_date,
    customer_id,
    order_status,

    SUM(item_revenue) AS total_item_revenue,
    SUM(quantity) AS total_quantity,

    MAX(order_amount) AS order_amount,
    MAX(discount) AS discount,
    MAX(payment_amount) AS payment_amount

FROM {{ ref('int_orders_enriched') }}

GROUP BY
    order_id,
    order_date,
    customer_id,
    order_status