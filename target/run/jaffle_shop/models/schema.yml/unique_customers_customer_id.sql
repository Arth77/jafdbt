
  
  

  
  USE [dbttry];
  EXEC('create view 

    [dbt_test__audit.testview_11b890861fc860fd3d245a51e8952644]
   as 
    
    

select
    customer_id as unique_field,
    count(*) as n_records

from "dbttry"."dbo"."customers"
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

    [dbt_test__audit.testview_11b890861fc860fd3d245a51e8952644]
  
  ) dbt_internal_test;

  USE [dbttry];
  EXEC('drop view 

    [dbt_test__audit.testview_11b890861fc860fd3d245a51e8952644]
  ;')