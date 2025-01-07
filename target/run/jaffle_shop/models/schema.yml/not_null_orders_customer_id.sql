
  
  

  
  USE [dbttry];
  EXEC('create view 

    [dbt_test__audit.testview_112c7c5dc8de7f8a63431eb32c0544bb]
   as 
    
    



select customer_id
from "dbttry"."dbo"."orders"
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

    [dbt_test__audit.testview_112c7c5dc8de7f8a63431eb32c0544bb]
  
  ) dbt_internal_test;

  USE [dbttry];
  EXEC('drop view 

    [dbt_test__audit.testview_112c7c5dc8de7f8a63431eb32c0544bb]
  ;')