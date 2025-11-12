SELECT
    COALESCE(guild, '無所属') AS "guild",
    COUNT(*) AS "num",
    MAX(level) AS "max_level",
    MIN(level) AS "min_level",
    MAX(buff) AS "max_buff",
    MIN(buff) AS "min_buff"
FROM
    s_characters
WHERE
    guild <> 'Yamato' OR
    guild IS NULL
GROUP BY
    guild
ORDER BY
    LOWER(guild) ASC NULLS FIRST;