{{
    config(
        materialized='table'
    )
}}

select 
    productid,
    productname,
    category,
    subcategory,
    sum(profit) as total_profit
from {{ ref('staging_orders') }}
group by 
    productid,
    productname,
    category,
    subcategory