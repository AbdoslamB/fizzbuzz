WITH cte(n) AS
(
    SELECT 1
    UNION ALL
    SELECT n + 1
    FROM cte
    WHERE n < 15 
)
SELECT 
    CASE
        WHEN n % 3 = 0 AND n % 5 = 0 THEN n || ' (Fizz Buzz)'
        WHEN n % 5 = 0 THEN n || ' (Buzz)'
        WHEN n % 3 = 0 THEN n || ' (Fizz)'
        ELSE CAST(n AS VARCHAR(4))
    END
FROM cte;

--- For a column in the data sheet 
WITH cte(n) AS
(
select n from abdoslam_db.childrent
)
SELECT 
    CASE
        WHEN n % 3 = 0 AND n % 5 = 0 THEN n || ' (Fizz Buzz)'
        WHEN n % 5 = 0 THEN n || ' (Buzz)'
        WHEN n % 3 = 0 THEN n || ' (Fizz)'
        ELSE CAST(n AS VARCHAR(4))
    END
FROM cte;

