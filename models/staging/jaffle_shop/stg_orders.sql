with source as (

    select * from {{ source('jaffle_shop', 'orders')}}

),

orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from dbt_fundamentals.jaffle_shop.orders

)

select * from orders