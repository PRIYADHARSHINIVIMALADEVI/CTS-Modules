SELECT event_id, COUNT(*) AS session_count
FROM Sessions
WHERE HOUR(start_time) BETWEEN 10 AND 11
GROUP BY event_id;
