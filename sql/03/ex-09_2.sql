SELECT
    id,
    name,
    last_login_at::DATE AS "Last Login",
    CAST('2025-10-15' AS DATE) - last_login_at::DATE || ' days ago' AS "Days Since Last Login",
    CASE
        WHEN CAST('2025-10-15' AS DATE) - last_login_at::DATE <= 50 THEN 'Yes'
        ELSE 'No'
    END AS "Is Active User?"
FROM
    s_characters;