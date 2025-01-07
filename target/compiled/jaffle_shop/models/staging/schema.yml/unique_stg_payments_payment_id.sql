
    
    

select
    payment_id as unique_field,
    count(*) as n_records

from "dbttry"."dbo"."stg_payments"
where payment_id is not null
group by payment_id
having count(*) > 1


