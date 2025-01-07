
  
  

  
  USE [dbttry];
  EXEC('create view 

    [dbt_test__audit.testview_624f3ffb73d20c021f3cf8ea86d060d5]
   as 
    
    

with all_values as (

    select
        status as value_field,
        count(*) as n_records

    from "dbttry"."dbo"."orders"
    group by status

)

select *
from all_values
where value_field not in (
    ''placed'',''shipped'',''completed'',''return_pending'',''returned''
)


;')
  select
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select  * from 

    [dbt_test__audit.testview_624f3ffb73d20c021f3cf8ea86d060d5]
  
  ) dbt_internal_test;

  USE [dbttry];
  EXEC('drop view 

    [dbt_test__audit.testview_624f3ffb73d20c021f3cf8ea86d060d5]
  ;')