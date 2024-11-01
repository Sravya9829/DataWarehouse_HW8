WITH __dbt__cte__user_session_channel as (
SELECT
userId,
sessionId,
channel
FROM DEV.RAW_DATA.USER_SESSION_CHANNEL
), __dbt__cte__session_timestamp as (
SELECT
sessionId,
ts
FROM DEV.RAW_DATA.SESSION_TIMESTAMP
), u AS (
SELECT * FROM __dbt__cte__user_session_channel
), st AS (
SELECT * FROM __dbt__cte__session_timestamp
)
SELECT u.userId, u.sessionId, u.channel, st.ts
FROM u
JOIN st ON u.sessionId = st.sessionId