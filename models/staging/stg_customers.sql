--staging model for customer data
select 
       CUSTOMER_ID,
       {{ clean_text('customer_name')}} As CUSTOMER_NAME,
       COUNTRY,
       EMAIL,
       STATUS,
       UPDATED_AT
from {{ref('customers')}}