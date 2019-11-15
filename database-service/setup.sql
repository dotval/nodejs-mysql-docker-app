/***CREATING ALL TABLES*/
CREATE TABLE users (
  id   INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(40)                NOT NULL,
  last_name  VARCHAR(40)                NOT NULL,
  phone      VARCHAR(20)                    NULL,
  zip_code   INT(7)                         NULL,
  prefecture VARCHAR(30)                   NULL,
  city       VARCHAR(30)                    NULL,
  area       VARCHAR(30)                    NULL,
  buiding    VARCHAR(30)                    NULL,
  email      VARCHAR(100)               NOT NULL,
  password   VARCHAR(255)               NOT NULL,
  created_at DATETIME                   NOT NULL,
  updated_at DATETIME                   NOT NULL
)
  ENGINE = INNODB;

/* INSERT DATA */
INSERT INTO users (first_name, last_name, phone, zip_code, prefecture, city, area, buiding, email, password, created_at, updated_at)
VALUES ('taro', 'yamada', 08012345678, 1230004, '東京都', '豊島区', '東池袋3-1-1', 'サンシャイン池袋64F', 'taro@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', now(), now());

DROP PROCEDURE IF EXISTS sp_GetUsers;
DELIMITER
CREATE PROCEDURE sp_GetUsers()
  BEGIN
    SELECT * FROM users;
  END
DELIMITER ;
/**Drop StoreProcedure**/
CALL sp_GetUsers();
/******************************************************************/






