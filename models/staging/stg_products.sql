SELECT 
        CATEGORY,
        CURRENCY,
        PRODUCT_ID,
        PRODUCT_NAME,
        UNIT_PRICE
FROM {{ref('products')}}