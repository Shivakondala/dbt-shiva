{{
    config(
        materialized='table'
    )
}}

select productname,sum(profit) as total_profit
from {{ ref('staging_orders') }}
group by productname