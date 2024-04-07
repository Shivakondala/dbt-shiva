{{
    config(
        materialized='table'
    )
}}

select 
    customerid,
    customername,
    segment,
    country,
    sum(profit) as total_profit
from {{ ref('staging_orders') }}
group by 
    customerid,
    customername,
    segment,
    country