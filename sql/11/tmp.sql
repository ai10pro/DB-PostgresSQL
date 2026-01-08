SELECT
    j.job_id,
    MAX(j.name) AS "name",
    COUNT(c.character_id) -- ◀ 注意
FROM
    n_characters AS c
    RIGHT JOIN n_jobs AS j ON c.job_id = j.job_id -- ◀ JOIN から RIGHT JOIN に
GROUP BY
    j.job_id
ORDER BY
    j.job_id;