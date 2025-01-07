
  
  

  
  USE [dbttry];
  EXEC('create view 

    [dbt_test__audit.testview_7500eae1579c6544978153224e73875c]
   as 
    
    



select order_id
from "dbttry"."dbo"."stg_orders"
where order_id is null


;')
  select
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select  * from 

    [dbt_test__audit.testview_7500eae1579c6544978153224e73875c]
  
  ) dbt_internal_test;

  USE [dbttry];
  EXEC('drop view 

    [dbt_test__audit.testview_7500eae1579c6544978153224e73875c]
  ;')