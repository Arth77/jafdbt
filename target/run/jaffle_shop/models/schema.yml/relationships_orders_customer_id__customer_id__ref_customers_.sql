
  
  

  
  USE [dbttry];
  EXEC('create view 

    [dbt_test__audit.testview_eb0f22015485cc0c7eacc90a87c3a070]
   as 
    
    

with child as (
    select customer_id as from_field
    from "dbttry"."dbo"."orders"
    where customer_id is not null
),

parent as (
    select customer_id as to_field
    from "dbttry"."dbo"."customers"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


;')
  select
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select  * from 

    [dbt_test__audit.testview_eb0f22015485cc0c7eacc90a87c3a070]
  
  ) dbt_internal_test;

  USE [dbttry];
  EXEC('drop view 

    [dbt_test__audit.testview_eb0f22015485cc0c7eacc90a87c3a070]
  ;')