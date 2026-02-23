START TRANSACTION;

CREATE TABLE test1 (id SERIAL PRIMARY KEY, value INTEGER);

CREATE TABLE test2 (id SERIAL PRIMARY KEY, value TEXT);

INSERT INTO
    test1 (id, value)
VALUES
    (1, 1),
    (2, 2);

INSERT INTO
    test2 (id, value)
VALUES
    (2, '2'),
    (4, 'd'),
    (8, 'FF');

SELECT
    *
FROM
    test1;

SELECT
    *
FROM
    test2;

SELECT
    id,
    value
FROM
    test1
UNION ALL
SELECT
    id,
    value
FROM
    test2;

ROLLBACK;