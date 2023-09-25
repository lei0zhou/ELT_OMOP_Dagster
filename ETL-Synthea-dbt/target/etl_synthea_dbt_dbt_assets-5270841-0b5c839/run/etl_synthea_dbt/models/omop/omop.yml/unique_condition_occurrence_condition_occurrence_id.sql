select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    condition_occurrence_id as unique_field,
    count(*) as n_records

from "dbt"."main"."condition_occurrence"
where condition_occurrence_id is not null
group by condition_occurrence_id
having count(*) > 1



      
    ) dbt_internal_test