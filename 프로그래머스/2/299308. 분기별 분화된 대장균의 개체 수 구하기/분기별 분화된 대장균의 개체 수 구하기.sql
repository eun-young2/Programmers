-- 코드를 작성해주세요
SELECT
    CONCAT(quarter(differentiation_date), 'Q') quarter,
    COUNT(id) ecoli_count
FROM
    ecoli_data
GROUP BY 
    quarter
ORDER BY
    quarter;