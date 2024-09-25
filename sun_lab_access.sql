CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id VARCHAR(10) NOT NULL UNIQUE,
    name VARCHAR(255) NOT NULL,
    role ENUM('student', 'faculty', 'staff', 'janitor', 'admin') NOT NULL,
    status ENUM('active', 'suspended') NOT NULL DEFAULT 'active'
);


CREATE TABLE access_logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id VARCHAR(10),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (student_id) REFERENCES users(student_id) ON DELETE CASCADE
);