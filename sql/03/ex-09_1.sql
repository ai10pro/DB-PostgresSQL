SELECT
    id,
    name,
    (CAST('2025-10-15' AS DATE) - last_login_at::DATE) || '日前' AS "最終ログイン"
FROM
    s_characters