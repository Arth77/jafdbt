
  
  

  
  USE [dbttry];
  EXEC('create view 

    [dbt_test__audit.testview_236c92fef571026825c8a027f06a9a64]
   as 
    
    



select customer_id
from "dbttry"."dbo"."stg_customers"
where customer_id is null


;')
  select
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select  * from 

    [dbt_test__audit.testview_236c92fef571026825c8a027f06a9a64]
  
  ) dbt_internal_test;

  USE [dbttry];
  EXEC('drop view 

    [dbt_test__audit.testview_236c92fef571026825c8a027f06a9a64]
  ;')