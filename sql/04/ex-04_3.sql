SELECT
    id,
    name,
    created_on
FROM
    s_characters
ORDER BY
    created_on ASC NULLS LAST
OFFSET
    10
LIMIT
    5;