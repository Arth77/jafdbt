
  
  

  
  USE [dbttry];
  EXEC('create view 

    [dbt_test__audit.testview_c925d2767f6625b5f2aafb56002d8d3c]
   as 
    
    



select credit_card_amount
from "dbttry"."dbo"."orders"
where credit_card_amount is null


;')
  select
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select  * from 

    [dbt_test__audit.testview_c925d2767f6625b5f2aafb56002d8d3c]
  
  ) dbt_internal_test;

  USE [dbttry];
  EXEC('drop view 

    [dbt_test__audit.testview_c925d2767f6625b5f2aafb56002d8d3c]
  ;')