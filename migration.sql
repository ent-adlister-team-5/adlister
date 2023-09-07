CREATE DATABASE IF NOT EXISTS event_adlister_db;
USE event_adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL,
    email VARCHAR(240) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(250) NOT NULL,
    description TEXT NOT NULL,
    date CHAR(10) NOT NULL,
    time CHAR(8) NOT NULL,
    location VARCHAR(250) NOT NULL,
    cancelled BOOLEAN,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE
);


