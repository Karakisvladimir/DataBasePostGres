SELECT 'YOUNGEST' AS TYPE, NAME_worker AS NAME_worker, BIRTHDAY
FROM worker
WHERE BIRTHDAY = (SELECT MIN(BIRTHDAY) AS youngest FROM worker)
UNION ALL
SELECT 'OLDEST' AS TYPE, NAME_worker AS NAME_worker, BIRTHDAY
FROM worker
WHERE BIRTHDAY = (SELECT MAX(BIRTHDAY) AS eldest FROM worker)
ORDER BY TYPE;