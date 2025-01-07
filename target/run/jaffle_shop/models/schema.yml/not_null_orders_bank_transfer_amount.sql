
  
  

  
  USE [dbttry];
  EXEC('create view 

    [dbt_test__audit.testview_336150f30b24d38958195cfaf620008e]
   as 
    
    



select bank_transfer_amount
from "dbttry"."dbo"."orders"
where bank_transfer_amount is null


;')
  select
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select  * from 

    [dbt_test__audit.testview_336150f30b24d38958195cfaf620008e]
  
  ) dbt_internal_test;

  USE [dbttry];
  EXEC('drop view 

    [dbt_test__audit.testview_336150f30b24d38958195cfaf620008e]
  ;')