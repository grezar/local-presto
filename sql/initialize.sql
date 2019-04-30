CREATE DATABASE IF NOT EXISTS local_presto;

CREATE USER presto;
GRANT ALL PRIVILEGES ON local_presto.* TO 'presto'@'%';
FLUSH PRIVILEGES;
