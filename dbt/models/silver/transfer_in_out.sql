select id
     , account_id
     , amount
     , transaction_requested_at
     , transaction_completed_at
     , status
     , 'in' as in_or_out
from {{ source('bronze', 'transfer_ins')}}
union all
select id
     , account_id
     , amount
     , transaction_requested_at
     , transaction_completed_at
     , status
     , 'out' as in_or_out
from {{ source('bronze', 'transfer_outs')}}