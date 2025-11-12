SELECT
    job,
    COUNT(*) AS "num",
    ROUND(AVG(level), 2) AS "avg_lv"
FROM
    s_characters
GROUP BY
    job
ORDER BY
    AVG(level) DESC;