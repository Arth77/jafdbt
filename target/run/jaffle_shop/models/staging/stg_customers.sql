USE [dbttry];
    
    

    EXEC('create view "dbo"."stg_customers" as with source as (
    select * from "dbttry"."dbo"."raw_customers"

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name

    from source

)

select * from renamed;');


