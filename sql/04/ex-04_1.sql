SELECT
    id,
    name,
    last_login_at
FROM
    s_characters
ORDER BY
    RANDOM()
LIMIT
    3