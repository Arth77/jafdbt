
  
  

  
  USE [dbttry];
  EXEC('create view 

    [dbt_test__audit.testview_469b889869c69f6e7bf567e21d623fa8]
   as 
    
    

select
    customer_id as unique_field,
    count(*) as n_records

from "dbttry"."dbo"."stg_customers"
where customer_id is not null
group by customer_id
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

    [dbt_test__audit.testview_469b889869c69f6e7bf567e21d623fa8]
  
  ) dbt_internal_test;

  USE [dbttry];
  EXEC('drop view 

    [dbt_test__audit.testview_469b889869c69f6e7bf567e21d623fa8]
  ;')