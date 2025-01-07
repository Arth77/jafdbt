
  
  

  
  USE [dbttry];
  EXEC('create view 

    [dbt_test__audit.testview_2ac9f6c2f5f82ec0512a51532564cb2d]
   as 
    
    

with all_values as (

    select
        payment_method as value_field,
        count(*) as n_records

    from "dbttry"."dbo"."stg_payments"
    group by payment_method

)

select *
from all_values
where value_field not in (
    ''credit_card'',''coupon'',''bank_transfer'',''gift_card''
)


;')
  select
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select  * from 

    [dbt_test__audit.testview_2ac9f6c2f5f82ec0512a51532564cb2d]
  
  ) dbt_internal_test;

  USE [dbttry];
  EXEC('drop view 

    [dbt_test__audit.testview_2ac9f6c2f5f82ec0512a51532564cb2d]
  ;')