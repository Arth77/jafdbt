
  
  

  
  USE [dbttry];
  EXEC('create view 

    [dbt_test__audit.testview_1c1c8d56ade3191ace013f057282626d]
   as 
    
    



select gift_card_amount
from "dbttry"."dbo"."orders"
where gift_card_amount is null


;')
  select
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select  * from 

    [dbt_test__audit.testview_1c1c8d56ade3191ace013f057282626d]
  
  ) dbt_internal_test;

  USE [dbttry];
  EXEC('drop view 

    [dbt_test__audit.testview_1c1c8d56ade3191ace013f057282626d]
  ;')