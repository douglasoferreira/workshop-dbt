{{ config(materialized='table') }}

select c.city_id
     , c.state_id
     , co.country_id
     , c.city
     , s.state
     , co.country
  from {{ source('bronze', 'city') }}    c
  left 
  join {{ source('bronze', 'state') }}   s 
  on s.state_id = c.state_id
  left 
  join {{ source('bronze', 'country') }} co
    on co.country_id = s.country_id