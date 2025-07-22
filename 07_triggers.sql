DELIMITER //
CREATE TRIGGER after_new_user
AFTER INSERT ON vlog_users
FOR EACH ROW
BEGIN
  INSERT INTO vlog_views (post_id, user_id, viewed_at)
  VALUES (1, NEW.user_id, NOW());
END;//
DELIMITER ;