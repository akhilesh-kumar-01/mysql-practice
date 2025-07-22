SELECT user_id, COUNT(*) AS total_posts
FROM vlog_posts
GROUP BY user_id
HAVING COUNT(*) >= 1;