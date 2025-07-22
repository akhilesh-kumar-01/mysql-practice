INSERT INTO vlog_users (full_name, email, password) VALUES
('Akhilesh Kr', 'akhilesh70526@gmail.com', 'pass123'),
('Riya Singh', 'riya@example.com', 'riya@321');

INSERT INTO vlog_posts (user_id, title, image_url, content) VALUES
(1, 'My First Travel Vlog!', 'https://example.com/image1.jpg', 'Amazing journey through the hills...'),
(2, 'City Lights and Midnight Walks', 'https://example.com/image2.jpg', 'Exploring the city that never sleeps...');

INSERT INTO vlog_comments (post_id, user_id, comment_text) VALUES
(1, 2, 'Wow, looks amazing!'),
(2, 1, 'Loved the vibe!');