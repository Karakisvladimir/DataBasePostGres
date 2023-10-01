SELECT pr.ID, cl.NAMES,
ROUND( (DATE_PART('year', pr.FINISH_DATE) - DATE_PART('year', pr.START_DATE )) * 12 +
DATE_PART('month', pr.FINISH_DATE) - DATE_PART('month', pr.START_DATE)) AS MONTH_COUNT FROM project pr
LEFT JOIN client cl ON pr.CLIENT_ID = cl.ID ORDER BY MONTH_COUNT DESC LIMIT 1 OFFSET 0;