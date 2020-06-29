SELECT user,authentication_string,plugin,host FROM mysql.user;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
FLUSH PRIVILEGES;

-- new user
ALTER USER 'cyberlab_testdb'@'localhost' IDENTIFIED WITH mysql_native_password BY 'gdjsfg546auhjksa564fiudgagsdyu456gfsdf';  
GRANT ALL PRIVILEGES ON *.* TO 'cyberlab_testdb'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

CREATE DATABASE testdb;
use testdb;

CREATE TABLE users (
    id VARCHAR(10),
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE users (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE users;

INSERT INTO users (id, username, password) VALUES ('0', 'admin', 'jshd546%@$HBDJHS');
