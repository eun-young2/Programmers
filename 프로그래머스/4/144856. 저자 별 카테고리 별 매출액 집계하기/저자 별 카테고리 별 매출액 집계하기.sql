-- 코드를 입력하세요
SELECT A.AUTHOR_ID, A.AUTHOR_NAME,CATEGORY, SUM(SALES*PRICE) TOTAL_SALES
FROM BOOK_SALES BS LEFT OUTER JOIN BOOK B 
ON BS.BOOK_ID = B.BOOK_ID LEFT OUTER JOIN AUTHOR A
ON B.AUTHOR_ID = A.AUTHOR_ID
WHERE YEAR(SALES_DATE) = 2022 AND MONTH(sALES_DATE) = 01
GROUP BY AUTHOR_ID, AUTHOR_NAME, CATEGORY
ORDER BY AUTHOR_ID ASC, CATEGORY DESC;