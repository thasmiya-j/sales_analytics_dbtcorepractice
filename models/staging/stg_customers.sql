select 
       CUSTOMER_ID,
       CUSTOMER_NAME,
       COUNTRY,
       EMAIL,
       STATUS,
       UPDATED_AT
from {{ref('customers')}}