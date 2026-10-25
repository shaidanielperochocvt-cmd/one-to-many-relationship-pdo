CREATE DATABASE web_development_db;

USE web_development_db;

CREATE TABLE Developers (
    developer_id INT AUTO_INCREMENT PRIMARY KEY,
    developer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE Projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    developer_id INT NOT NULL,
    FOREIGN KEY (developer_id)
        REFERENCES Developers(developer_id)
);

INSERT INTO Developers (developer_name, email)
VALUES
('John Smith', 'john@gmail.com'),
('Mary Jane', 'mary@gmail.com');

INSERT INTO Projects (project_name, description, developer_id)
VALUES
('E-Commerce Website', 'Online shopping website', 1),
('School Website', 'Website for a school', 1),
('Portfolio Website', 'Personal portfolio', 2);

SELECT
    Developers.developer_name,
    Projects.project_name,
    Projects.description
FROM Developers
INNER JOIN Projects
ON Developers.developer_id = Projects.developer_id;
