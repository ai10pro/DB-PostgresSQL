START TRANSACTION;

SELECT
    *
FROM
    books;

UPDATE books
SET
    price = 2500
WHERE
    title = '人間失格';

-- 値段更新後の確認
SELECT
    *
FROM
    books;

-- 通常ビューの結果を確認
SELECT
    *
FROM
    v_book_details
WHERE
    title = '人間失格';

SELECT
    *
FROM
    mv_book_materialized
WHERE
    title = '人間失格';

ROLLBACK;