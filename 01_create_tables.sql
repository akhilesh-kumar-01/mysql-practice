CREATE TABLE vlog_users (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  password VARCHAR(100),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE vlog_posts (
  post_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  title VARCHAR(200),
  image_url VARCHAR(300),
  content TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES vlog_users(user_id)
);

CREATE TABLE vlog_comments (
  comment_id INT AUTO_INCREMENT PRIMARY KEY,
  post_id INT,
  user_id INT,
  comment_text VARCHAR(500),
  commented_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (post_id) REFERENCES vlog_posts(post_id),
  FOREIGN KEY (user_id) REFERENCES vlog_users(user_id)
);

CREATE TABLE vlog_views (
  view_id INT AUTO_INCREMENT PRIMARY KEY,
  post_id INT,
  user_id INT,
  viewed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (post_id) REFERENCES vlog_posts(post_id),
  FOREIGN KEY (user_id) REFERENCES vlog_users(user_id)
);