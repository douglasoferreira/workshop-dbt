{{ config(materialized='table') }}

select time_id
     , action_timestamp::timestamp
     , date_part('year', action_timestamp::timestamp )  as action_year
     , date_part('month', action_timestamp::timestamp ) as action_month
     , date_part('week', action_timestamp::timestamp )  as action_week
     , to_char(action_timestamp::timestamp, 'Day')      as action_weekday
     , date_part('day', action_timestamp::timestamp)    as action_day
from {{ source('bronze', 'd_time')}}