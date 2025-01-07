
  
  

  
  USE [dbttry];
  EXEC('create view 

    [dbt_test__audit.testview_3786a464e631ac52a75a234730c4f1ba]
   as 
    
    



select order_id
from "dbttry"."dbo"."orders"
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

    [dbt_test__audit.testview_3786a464e631ac52a75a234730c4f1ba]
  
  ) dbt_internal_test;

  USE [dbttry];
  EXEC('drop view 

    [dbt_test__audit.testview_3786a464e631ac52a75a234730c4f1ba]
  ;')