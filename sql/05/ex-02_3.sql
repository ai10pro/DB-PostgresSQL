START TRANSACTION;

SELECT
    id,
    name,
    job,
    guild,
    buff,
    CASE
        WHEN guild IS NULL AND
        job NOT IN ('Wizard', 'Priest') THEN 'Yes'
        ELSE 'NO'
    END AS "is_target"
FROM
    s_characters
ORDER BY
    id;

UPDATE s_characters
SET
    buff = buff + 0.25
WHERE
    guild IS NULL AND
    job NOT IN ('Wizard', 'Priest');

SELECT
    id,
    name,
    job,
    guild,
    buff,
    CASE
        WHEN guild IS NULL AND
        job NOT IN ('Wizard', 'Priest') THEN 'Yes'
        ELSE 'NO'
    END AS "is_target"
FROM
    s_characters
ORDER BY
    id;

ROLLBACK;