CREATE TABLE IF NOT EXISTS task_admin (
                    admin_id INT AUTO_INCREMENT PRIMARY KEY,
                    admin_email VARCHAR(255) NOT NULL,
                    admin_password VARCHAR(255) NOT NULL
                );
CREATE TABLE IF NOT EXISTS task_department (
                    department_id INT AUTO_INCREMENT PRIMARY KEY,
                    department_name VARCHAR(255) NOT NULL,
                    department_status ENUM('Enable', 'Disable'),
                    department_added_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                    department_updated_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
                );
CREATE TABLE IF NOT EXISTS task_user (
                    user_id INT AUTO_INCREMENT PRIMARY KEY,
                    user_first_name VARCHAR(255) NOT NULL,
                    user_last_name VARCHAR(255) NOT NULL,
                    department_id INT NOT NULL,
                    user_email_address VARCHAR(255) NOT NULL,
                    user_email_password VARCHAR(255) NOT NULL,
                    user_contact_no VARCHAR(20),
                    user_date_of_birth DATE,
                    user_gender ENUM('Male', 'Female', 'Other'),
                    user_address TEXT,
                    user_status  ENUM('Enable', 'Disable'),
                    user_image VARCHAR(255),
                    user_added_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                    user_updated_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                    FOREIGN KEY (department_id) REFERENCES task_department(department_id)
                );

CREATE TABLE IF NOT EXISTS task_manage (
                    task_id INT AUTO_INCREMENT PRIMARY KEY,
                    task_title VARCHAR(255) NOT NULL,
                    task_creator_description TEXT,
                    task_completion_description TEXT,
                    task_department_id INT NOT NULL,
                    task_user_to INT NOT NULL,
                    task_assign_date DATE,
                    task_end_date DATE,
                    task_status  ENUM('Pending', 'Viewed', 'In Progress', 'Completed', 'Delayed'),
                    task_added_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                    task_updated_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                    FOREIGN KEY (task_department_id) REFERENCES task_department(department_id),
                    FOREIGN KEY (task_user_to) REFERENCES task_user(user_id)
                );