WITH user_session_channel AS (
  SELECT
    USERID,
    SESSIONID,
    CHANNEL
  FROM {{ source('RAW_DATA', 'USER_SESSION_CHANNEL') }}
)

SELECT * FROM user_session_channel