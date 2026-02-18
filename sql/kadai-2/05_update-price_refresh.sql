START TRANSACTION;

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

-- マテリアライズドビューの更新と結果の確認
REFRESH MATERIALIZED VIEW mv_book_materialized;

-- マテリアライズドビューの結果を確認
SELECT
    *
FROM
    mv_book_materialized
WHERE
    title = '人間失格';

ROLLBACK;