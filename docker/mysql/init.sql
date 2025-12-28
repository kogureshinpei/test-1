-- DBの初期化
DROP DATABASE IF EXISTS test_db;
CREATE DATABASE test_db CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE test_db;

-- サンプルテーブルの作成
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- サンプルデータの挿入
INSERT INTO users (username, email) VALUES
('alice', 'alice@example.com'),
('bob', 'bob@example.com'),
('charlie', 'charlie@example.com');

-- docker compose exec db sh
-- mysql -u root -p
-- use test_db
-- show tables;
-- SELECT * FROM users;

-- init.sqlの情報更新
-- mysql -u root -p test_db < /docker-entrypoint-initdb.d/init.sql
-- mysql -u root -proot test_db < /docker-entrypoint-initdb.d/init.sql