SELECT e.title, AVG(f.rating) AS avg_rating, COUNT(*) AS feedback_count
FROM Feedback f
JOIN Events e ON f.event_id = e.event_id
GROUP BY f.event_id
HAVING COUNT(*) >= 10
ORDER BY avg_rating DESC;
