CREATE TABLE IF NOT EXISTS local_presto.items (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(10),
  description VARCHAR(30),
  price INT UNSIGNED,
  created_at DATETIME
);
