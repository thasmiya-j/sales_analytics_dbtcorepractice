select 
        CURRENCY,
        ORDER_ID,
        PAID_AT,
        PAYMENT_AMOUNT,
        PAYMENT_ID,
        PAYMENT_STATUS,
FROM {{ref('payments')}}

        