with
    session_timestamp as (
        select sessionid, ts from {{ source("RAW_DATA", "SESSION_TIMESTAMP") }}
    )

select *
from session_timestamp