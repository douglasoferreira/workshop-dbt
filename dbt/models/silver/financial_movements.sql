{{ config(materialized='table') }}

select id                       as movement_id
     , account_id
     , amount                   as movement_amount
     , transaction_requested_at as movement_requested_at
     , transaction_completed_at as movement_completed_at
     , status                   as movement_status
     , in_or_out                as movement_in_or_out
     , 'transfer'               as movement_type
from {{ ref('transfer_in_out') }}
union all
select id
     , account_id
     , pix_amount
     , pix_requested_at
     , pix_completed_at
     , status
     , replace(in_or_out, 'pix_', '')
     , 'pix'
from {{ source('bronze', 'pix_movements') }}