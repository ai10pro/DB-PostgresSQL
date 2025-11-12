START TRANSACTION;

SELECT
    id,
    name,
    buff,
    last_login_at,
    DATE '2025-10-15' - CAST(last_login_at AS DATE) AS "days since last login"
FROM
    s_characters
ORDER BY
    id;

UPDATE s_characters
SET
    buff = buff + CASE
        WHEN DATE '2025-10-15' - CAST(last_login_at AS DATE) >= 60 THEN 0.40
        WHEN DATE '2025-10-15' - CAST(last_login_at AS DATE) >= 40 THEN 0.30
        WHEN DATE '2025-10-15' - CAST(last_login_at AS DATE) >= 20 THEN 0.20
        WHEN DATE '2025-10-15' - CAST(last_login_at AS DATE) >= 10 THEN 0.10
        ELSE 0.0
    END;

SELECT
    id,
    name,
    buff,
    last_login_at,
    DATE '2025-10-15' - CAST(last_login_at AS DATE) AS "days since last login"
FROM
    s_characters
ORDER BY
    id;

ROLLBACK;
