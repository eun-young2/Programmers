-- 코드를 작성해주세요
WITH RECURSIVE TBL AS (
    SELECT
        ID,
        PARENT_ID,
        1 AS GENERATION
    FROM
        ECOLI_DATA
    WHERE
        PARENT_ID IS NULL

    UNION ALL

    SELECT
        e.ID,
        e.PARENT_ID,
        GENERATION + 1
    FROM
        ECOLI_DATA e INNER JOIN TBL t
        ON e.PARENT_ID = t.ID
)

SELECT ID
FROM TBL
WHERE GENERATION = 3
ORDER BY ID ASC;