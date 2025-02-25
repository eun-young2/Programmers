-- 코드를 작성해주세요
SELECT C.SCORE SCORE, B.EMP_NO EMP_NO, B.EMP_NAME EMP_NAME, B.POSITION POSITION,
B.EMAIL EMAIL
FROM HR_EMPLOYEES B RIGHT JOIN (
    SELECT EMP_NO, SUM(SCORE) SCORE
    FROM HR_GRADE 
    GROUP BY EMP_NO
    ORDER BY SCORE DESC
    LIMIT 1
) C ON B.EMP_NO = C.EMP_NO
