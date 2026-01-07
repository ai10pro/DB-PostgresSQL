SELECT
    g.guild_id,
    g.name,
    (
        SELECT
            name
        FROM
            x_characters
        WHERE
            character_id = g.owner_id
    ) AS "owner_name",
    (
        SELECT
            level
        FROM
            x_characters
        WHERE
            character_id = g.owner_id
    ) AS "owner_level"
FROM
    x_guilds AS g
ORDER BY
    g.guild_id;