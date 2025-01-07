
  
  

  
  USE [dbttry];
  EXEC('create view 

    [dbt_test__audit.testview_0a898d3fb52be548e26ece001942d976]
   as 
    
    

select
    order_id as unique_field,
    count(*) as n_records

from "dbttry"."dbo"."orders"
where order_id is not null
group by order_id
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

    [dbt_test__audit.testview_0a898d3fb52be548e26ece001942d976]
  
  ) dbt_internal_test;

  USE [dbttry];
  EXEC('drop view 

    [dbt_test__audit.testview_0a898d3fb52be548e26ece001942d976]
  ;')