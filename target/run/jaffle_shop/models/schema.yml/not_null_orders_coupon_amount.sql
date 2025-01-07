
  
  

  
  USE [dbttry];
  EXEC('create view 

    [dbt_test__audit.testview_f93fa6b9f73a5d88c7496bc8c2274969]
   as 
    
    



select coupon_amount
from "dbttry"."dbo"."orders"
where coupon_amount is null


;')
  select
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select  * from 

    [dbt_test__audit.testview_f93fa6b9f73a5d88c7496bc8c2274969]
  
  ) dbt_internal_test;

  USE [dbttry];
  EXEC('drop view 

    [dbt_test__audit.testview_f93fa6b9f73a5d88c7496bc8c2274969]
  ;')