SELECT DISTINCT
    COALESCE(guild, '未所属') AS "ギルド",
    job
FROM
    s_characters;