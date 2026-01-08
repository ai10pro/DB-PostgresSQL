SELECT
    c.character_id,
    c.name,
    (
        SELECT
            name
        FROM
            n_jobs AS j
        WHERE
            j.job_id = c.job_id
    ) AS "job"
FROM
    n_characters AS c
ORDER BY
    c.character_id;