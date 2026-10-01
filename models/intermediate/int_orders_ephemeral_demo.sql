{{ config(materialized='ephemeral') }}
SELECT
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_AMOUNT,
    STATUS
FROM {{ ref('stg_orders') }}