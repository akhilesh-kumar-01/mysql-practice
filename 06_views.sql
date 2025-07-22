CREATE VIEW user_post_count AS
SELECT user_id, COUNT(*) AS post_count
FROM vlog_posts
GROUP BY user_id;