START TRANSACTION
COPY public.s_users (id, name, age)
FROM
    '/tmp/insert-s_users.csv'
WITH
    (FORMAT csv, HEADER TRUE, NULL 'NULL', ENCODING 'UTF8');

SELECT
    *
FROM
    s_users;

ROLLBACK