START TRANSACTION;

SELECT
    id,
    name,
    buff
FROM
    s_characters
ORDER BY
    id;

UPDATE s_characters
SET
    buff = 0.0;

SELECT
    id,
    name,
    buff
FROM
    s_characters
ORDER BY
    id;

ROLLBACK;