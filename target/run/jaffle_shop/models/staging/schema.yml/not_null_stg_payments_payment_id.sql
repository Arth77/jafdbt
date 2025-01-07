
  
  

  
  USE [dbttry];
  EXEC('create view 

    [dbt_test__audit.testview_cfdc04a773072a8452d196e989791be9]
   as 
    
    



select payment_id
from "dbttry"."dbo"."stg_payments"
where payment_id is null


;')
  select
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select  * from 

    [dbt_test__audit.testview_cfdc04a773072a8452d196e989791be9]
  
  ) dbt_internal_test;

  USE [dbttry];
  EXEC('drop view 

    [dbt_test__audit.testview_cfdc04a773072a8452d196e989791be9]
  ;')