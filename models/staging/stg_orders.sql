select 
        CUSTOMER_ID,
        DISCOUNT,
        LOADED_AT,
        ORDER_AMOUNT,
        ORDER_DATE,
        ORDER_ID,
        STATUS
FROM {{ref('orders')}}

        