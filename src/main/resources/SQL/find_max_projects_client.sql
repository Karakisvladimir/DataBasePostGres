SELECT c.names , count(p.id) as PROJECT_COUNT
FROM client c
JOIN project p ON p.CLIENT_ID = c.ID
GROUP BY c.NAMES
ORDER BY PROJECT_COUNT desc
LIMIT 1;