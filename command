SELECT COUNT(*) AS "Number of Active Connections",
       MACHINE AS "Client IP/Host"
FROM V$SESSION
WHERE STATUS = 'ACTIVE'
GROUP BY MACHINE;

SELECT name, value
FROM V$PARAMETER
WHERE name = 'processes';
