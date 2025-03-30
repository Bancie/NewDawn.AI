CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    grade INT
);

CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    subject VARCHAR(100)
);

CREATE TABLE Classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(100),
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id)
);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    class_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);

-- Students
INSERT INTO Students VALUES (1, 'Alice', 'Johnson', '2010-05-14', 5);
INSERT INTO Students VALUES (2, 'Bob', 'Smith', '2009-11-22', 6);

-- Teachers
INSERT INTO Teachers VALUES (1, 'Emily', 'Carter', 'Mathematics');
INSERT INTO Teachers VALUES (2, 'Daniel', 'Lee', 'English');

-- Classes
INSERT INTO Classes VALUES (1, 'Math 101', 1);
INSERT INTO Classes VALUES (2, 'English 101', 2);

-- Enrollments
INSERT INTO Enrollments VALUES (1, 1, 1);  -- Alice in Math
INSERT INTO Enrollments VALUES (2, 1, 2);  -- Alice in English
INSERT INTO Enrollments VALUES (3, 2, 1);  -- Bob in Math