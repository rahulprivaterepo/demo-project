CREATE DATABASE IF NOT EXISTS demodb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE demodb;

CREATE TABLE IF NOT EXISTS `user`
(
    `id`               bigint(13)    NOT NULL AUTO_INCREMENT,
    `user_id`          bigint(13)    NOT NULL UNIQUE,
    `year_of_birth`    varchar(4)    NOT NULL,
    `age`              DECIMAL(3, 0) NOT NULL,
    `city`             varchar(512)  NOT NULL,
    `hashed_address`   char(64)      NOT NULL,
    `created_at`       datetime(3)   NOT NULL DEFAULT NOW(3),
    `updated_at`       datetime(3)   NOT NULL DEFAULT NOW(3) ON UPDATE NOW(3),
    PRIMARY KEY (`id`),
    INDEX `age` (`age`),
    INDEX `updated_at` (`updated_at`)
    ) ENGINE = InnoDB
    DEFAULT CHARSET = utf8mb4;

