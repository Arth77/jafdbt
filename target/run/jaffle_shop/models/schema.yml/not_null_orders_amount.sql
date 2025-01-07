
  
  

  
  USE [dbttry];
  EXEC('create view 

    [dbt_test__audit.testview_c9f9b7a6504a12c7069b913afea5a5c4]
   as 
    
    



select amount
from "dbttry"."dbo"."orders"
where amount is null


;')
  select
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select  * from 

    [dbt_test__audit.testview_c9f9b7a6504a12c7069b913afea5a5c4]
  
  ) dbt_internal_test;

  USE [dbttry];
  EXEC('drop view 

    [dbt_test__audit.testview_c9f9b7a6504a12c7069b913afea5a5c4]
  ;')