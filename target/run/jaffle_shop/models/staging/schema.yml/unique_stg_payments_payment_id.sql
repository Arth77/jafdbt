
  
  

  
  USE [dbttry];
  EXEC('create view 

    [dbt_test__audit.testview_9a14019ded0a718013c791fbd6032dd7]
   as 
    
    

select
    payment_id as unique_field,
    count(*) as n_records

from "dbttry"."dbo"."stg_payments"
where payment_id is not null
group by payment_id
having count(*) > 1


;')
  select
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select  * from 

    [dbt_test__audit.testview_9a14019ded0a718013c791fbd6032dd7]
  
  ) dbt_internal_test;

  USE [dbttry];
  EXEC('drop view 

    [dbt_test__audit.testview_9a14019ded0a718013c791fbd6032dd7]
  ;')