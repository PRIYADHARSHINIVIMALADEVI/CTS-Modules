SELECT u.full_name, COUNT(*) AS feedback_count
FROM Feedback f
JOIN Users u ON f.user_id = u.user_id
GROUP BY f.user_id
ORDER BY feedback_count DESC
LIMIT 5;
