START TRANSACTION;

INSERT INTO
    s_characters (name, job, level, buff, guild, created_on, last_login_at)
VALUES
    ('Zoe', 'Paladin', 11, 0.00, 'W.Wind', '2025-10-12', '2025-10-20 15:48:00'),
    ('Justin', 'Archer', 2, 0.50, NULL, '2024-10-23', '2025-10-23 11:28:00');

SELECT
    *
FROM
    s_characters;

ROLLBACK;