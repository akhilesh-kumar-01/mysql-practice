SELECT vu.full_name, vp.title
FROM vlog_users vu
JOIN vlog_posts vp ON vu.user_id = vp.user_id;

SELECT vp.title, vc.comment_text
FROM vlog_posts vp
LEFT JOIN vlog_comments vc ON vp.post_id = vc.post_id;