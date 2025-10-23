SELECT
    id,
    name,
    last_login_at,
    (CAST('2025-10-25' AS DATE) - CAST(last_login_at AS DATE)) || 'Days Since LAst Login'
FROM
    s_characters
ORDER BY
    last_login_at DESC NULLS LAST;