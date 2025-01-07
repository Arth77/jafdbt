
  
  

  
  USE [dbttry];
  EXEC('create view 

    [dbt_test__audit.testview_dba4e66c0fc6984543ef701c20663808]
   as 
    
    



select customer_id
from "dbttry"."dbo"."customers"
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

    [dbt_test__audit.testview_dba4e66c0fc6984543ef701c20663808]
  
  ) dbt_internal_test;

  USE [dbttry];
  EXEC('drop view 

    [dbt_test__audit.testview_dba4e66c0fc6984543ef701c20663808]
  ;')