select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with child as (
    select provider_id as from_field
    from "dbt"."main"."observation"
    where provider_id is not null
),

parent as (
    select provider_id as to_field
    from "dbt"."main"."provider"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



      
    ) dbt_internal_test