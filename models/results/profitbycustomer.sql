{{
    config(
        materialized='table'
    )
}}

select customername,sum(profit) as total_profit
from {{ ref('staging_orders') }}
group by customername