SELECT
    o.order_id,
    o.order_date,
    o.status AS order_status,

    o.customer_id,
    c.customer_name,
    c.email,
    c.country,
    c.status AS customer_status,

    oi.product_id,
    p.product_name,
    p.category,

    oi.quantity,
    oi.unit_price,

    oi.quantity * oi.unit_price AS item_revenue,

    o.order_amount,
    o.discount,

    pay.payment_amount,
    pay.payment_status

FROM {{ ref('stg_orders') }} AS o

LEFT JOIN {{ ref('stg_customers') }} AS c
    ON o.customer_id = c.customer_id

LEFT JOIN {{ ref('stg_order_items') }} AS oi
    ON o.order_id = oi.order_id

LEFT JOIN {{ ref('stg_products') }} AS p
    ON oi.product_id = p.product_id

LEFT JOIN {{ ref('stg_payments') }} AS pay
    ON o.order_id = pay.order_id