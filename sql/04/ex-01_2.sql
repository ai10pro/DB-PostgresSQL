SELECT
    id,
    guild,
    level AS "Lv.",
    name || '(' || Job || ')' AS "Name(Job)"
FROM
    s_characters
ORDER BY
    LOWER(guild) ASC,
    level DESC;