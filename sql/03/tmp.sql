SELECT
    LOCALTIMESTAMP(0) AS "LOCALTIMESTAMP",
    CURRENT_TIMESTAMP(0) AS "CURRENT_TIMESTAMP";

SELECT
    LOCALTIME(0) AS "LOCALTIME",
    CURRENT_TIME(0) AS "CURRENT_TIME";

SELECT
    CURRENT_DATE AS "CURRENT_DATE";

-- SELECT
--     name,
--     last_login_at,
--     TO_CHAR(last_login_at, 'YYYY"/"MM"/"DD HH24"時"MI"分"SS"秒"')
-- FROM
--     s_characters;
-- SELECT
--     name,
--     last_login_at,
--     DATE_PART('year', last_login_at) AS "year",
--     DATE_PART('month', last_login_at) AS "month",
--     DATE_PART('day', last_login_at) AS "day",
--     DATE_PART('hour', last_login_at) AS "hour",
--     DATE_PART('minute', last_login_at) AS "minute",
--     DATE_PART('second', last_login_at) AS "second"
-- FROM
--     s_characters;
-- -- 以下は標準SQLでの記法 EXTRACT関数を使用する
-- SELECT
--     EXTRACT(
--         YEAR
--         FROM
--             last_login_at
--     ) AS login_year,
--     EXTRACT(
--         MONTH
--         FROM
--             last_login_at
--     ) AS login_month,
--     EXTRACT(
--         DAY
--         FROM
--             last_login_at
--     ) AS login_day,
--     EXTRACT(
--         HOUR
--         FROM
--             last_login_at
--     ) AS login_hour,
--     EXTRACT(
--         MINUTE
--         FROM
--             last_login_at
--     ) AS login_minute,
--     EXTRACT(
--         SECOND
--         FROM
--             last_login_at
--     ) AS login_second
-- FROM
--     s_characters;