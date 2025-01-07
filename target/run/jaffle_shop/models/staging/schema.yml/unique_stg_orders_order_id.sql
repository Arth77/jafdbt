
  
  

  
  USE [dbttry];
  EXEC('create view 

    [dbt_test__audit.testview_848542696b8ac67e81d4e5b7434c29fc]
   as 
    
    

select
    order_id as unique_field,
    count(*) as n_records

from "dbttry"."dbo"."stg_orders"
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

    [dbt_test__audit.testview_848542696b8ac67e81d4e5b7434c29fc]
  
  ) dbt_internal_test;

  USE [dbttry];
  EXEC('drop view 

    [dbt_test__audit.testview_848542696b8ac67e81d4e5b7434c29fc]
  ;')