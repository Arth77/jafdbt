USE [dbttry];
    
    

    EXEC('create view "dbo"."stg_orders" as with source as (
    select * from "dbttry"."dbo"."raw_orders"

),

renamed as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from source

)

select * from renamed;');


