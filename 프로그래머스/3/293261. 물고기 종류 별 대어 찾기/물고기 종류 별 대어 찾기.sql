-- 코드를 작성해주세요
SELECT A.ID, B.FISH_NAME, A.LENGTH
FROM FISH_INFO A JOIN FISH_NAME_INFO B
ON A.FISH_TYPE = B.FISH_TYPE
WHERE A.LENGTH IN (
    SELECT MAX(LENGTH)
    FROM FISH_INFO C
    WHERE A.FISH_TYPE = C.FISH_TYPE
)
ORDER BY ID;