CREATE DATABASE IF NOT EXISTS webdev;

USE webdev;

CREATE TABLE IF NOT EXISTS Developers (
    developer_id INT AUTO_INCREMENT PRIMARY KEY,
    developer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    developer_id INT NOT NULL,

    CONSTRAINT fk_developer
        FOREIGN KEY (developer_id)
        REFERENCES Developers(developer_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
) ENGINE=InnoDB;
