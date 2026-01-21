CREATE SCHEMA IF NOT EXISTS yrkesco;


CREATE TABLE IF NOT EXISTS
    yrkesco.city (
        city_id SERIAL PRIMARY KEY,
        city_name VARCHAR(20) NOT NULL
    );

CREATE TABLE IF NOT EXISTS
    yrkesco.postcode (
        postcode INTEGER PRIMARY KEY,
        city_id INTEGER NOT NULL
    );

CREATE TABLE IF NOT EXISTS
    yrkesco.address (
        address_id SERIAL PRIMARY KEY,
        address VARCHAR(100) NOT NULL,
        postcode INTEGER NOT NULL
    );

CREATE TABLE IF NOT EXISTS
    yrkesco.facility (
        facility_id SERIAL PRIMARY KEY,
        name VARCHAR(30) NOT NULL,
        address_id INTEGER NOT NULL
    );

CREATE TABLE IF NOT EXISTS
    yrkesco.program (
        program VARCHAR(5) PRIMARY KEY,
        program_name VARCHAR(55) NOT NULL,        
        points INTEGER NOT NULL CHECK (points IN (200, 400))        
    );


CREATE TABLE IF NOT EXISTS
    yrkesco.class (
        class_id SERIAL PRIMARY KEY,
        program VARCHAR(5),
        start_date DATE NOT NULL,
        facility_id INTEGER NOT NULL        
    );


CREATE TABLE IF NOT EXISTS
    yrkesco.student (
        student_id SERIAL PRIMARY KEY,
        first_name VARCHAR(50) NOT NULL,
        last_name VARCHAR(50) NOT NULL,
        class_id INTEGER NOT NULL,
        student_email VARCHAR(255) NOT NULL
    );

CREATE TABLE IF NOT EXISTS
    yrkesco.student_info (
        student_info_id SERIAL PRIMARY KEY,
        student_id INTEGER NOT NULL,
        email VARCHAR(255) NOT NULL,
        phone_nr VARCHAR(15) NOT NULL,
        address_id INTEGER NOT NULL,
        social_security CHAR(12) NOT NULL
    );

CREATE TABLE IF NOT EXISTS
    yrkesco.program_manager (
        prog_manager_id SERIAL PRIMARY KEY,
        first_name VARCHAR(50) NOT NULL,
        last_name VARCHAR(50) NOT NULL,        
        work_email VARCHAR(255) NOT NULL
    );

CREATE TABLE IF NOT EXISTS
    yrkesco.program_facility (
        program VARCHAR(5) NOT NULL,
        prog_manager_id INTEGER NOT NULL,        
        facility_id INTEGER NOT NULL,
        PRIMARY KEY (program, facility_id)        
    );

CREATE TABLE IF NOT EXISTS
    yrkesco.permanent_educator (
        permanent_ed_id SERIAL PRIMARY KEY,
        first_name VARCHAR(50) NOT NULL,
        last_name VARCHAR(50) NOT NULL,        
        work_email VARCHAR(255) NOT NULL
    );

CREATE TABLE IF NOT EXISTS
    yrkesco.permanent_employ_info (
        perm_employ_info_id SERIAL PRIMARY KEY,
        permanent_ed_id INTEGER,
        prog_manager_id INTEGER,
        email VARCHAR(255) NOT NULL,
        phone_nr VARCHAR(15) NOT NULL,
        address_id INTEGER NOT NULL,
        social_security CHAR(12) NOT NULL,
        salary DECIMAL(10, 2) NOT NULL,
        employment_date DATE NOT NULL
    );

CREATE TABLE IF NOT EXISTS
    yrkesco.consulting_company (        
        organization_nr CHAR(10) PRIMARY KEY,
        company VARCHAR(100) NOT NULL,
        f_tax BOOLEAN NOT NULL,        
        address_id INTEGER NOT NULL
    );

CREATE TABLE IF NOT EXISTS
    yrkesco.consultant (
        consultant_id SERIAL PRIMARY KEY,
        organization_nr CHAR(10) NOT NULL,
        first_name VARCHAR(50) NOT NULL,
        last_name VARCHAR(50) NOT NULL,        
        work_email VARCHAR(255) NOT NULL
    );

CREATE TABLE IF NOT EXISTS
    yrkesco.consultant_info (        
        consultant_info_id SERIAL PRIMARY KEY,
        consultant_id INTEGER NOT NULL,
        email VARCHAR(255) NOT NULL,
        phone_nr VARCHAR(15) NOT NULL,
        address_id INTEGER NOT NULL,
        social_security CHAR(12) NOT NULL,
        hourly_fee DECIMAL(8, 2) NOT NULL,
        employment_date DATE NOT NULL
    );

CREATE TABLE IF NOT EXISTS
    yrkesco.educator (
        educator_id SERIAL PRIMARY KEY,
        permanent_ed_id INTEGER,
        prog_manager_id INTEGER,
        consultant_id INTEGER
    );

CREATE TABLE IF NOT EXISTS
    yrkesco.course (  
        course_code VARCHAR(10) PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        points DECIMAL(3, 1) NOT NULL,
        freestanding BOOLEAN NOT NULL DEFAULT FALSE,
        description VARCHAR(1500) NOT NULL
    );

CREATE TABLE IF NOT EXISTS
    yrkesco.educator_course (        
        educator_id INTEGER NOT NULL,
        course_code VARCHAR(10) NOT NULL,
        PRIMARY KEY (educator_id, course_code)
    );

CREATE TABLE IF NOT EXISTS
    yrkesco.course_class (  
        course_code VARCHAR(10) NOT NULL,
        class_id INTEGER NOT NULL,
        PRIMARY KEY (course_code, class_id)
    );


COMMENT ON COLUMN yrkesco.class.program IS 'This can be null if the Class is not in a program, freestanding';

COMMENT ON TABLE yrkesco.educator IS 'These can be null to show what the educator only have one employment type';

COMMENT ON COLUMN yrkesco.course.freestanding IS 'Default false då övervägande kurser ingår i ett pogram';



ALTER TABLE yrkesco.student_info ADD FOREIGN KEY (student_id) REFERENCES yrkesco.student (student_id);

ALTER TABLE yrkesco.student_info ADD FOREIGN KEY (address_id) REFERENCES yrkesco.address (address_id);

ALTER TABLE yrkesco.student ADD FOREIGN KEY (class_id) REFERENCES yrkesco.class (class_id);

ALTER TABLE yrkesco.class ADD FOREIGN KEY (program) REFERENCES yrkesco.program (program);

ALTER TABLE yrkesco.class ADD FOREIGN KEY (facility_id) REFERENCES yrkesco.facility (facility_id);

ALTER TABLE yrkesco.program_facility ADD FOREIGN KEY (program) REFERENCES yrkesco.program (program);

ALTER TABLE yrkesco.program_facility ADD FOREIGN KEY (prog_manager_id) REFERENCES yrkesco.program_manager (prog_manager_id);

ALTER TABLE yrkesco.program_facility ADD FOREIGN KEY (facility_id) REFERENCES yrkesco.facility (facility_id);

ALTER TABLE yrkesco.facility ADD FOREIGN KEY (address_id) REFERENCES yrkesco.address (address_id);

ALTER TABLE yrkesco.address ADD FOREIGN KEY (postcode) REFERENCES yrkesco.postcode (postcode);

ALTER TABLE yrkesco.postcode ADD FOREIGN KEY (city_id) REFERENCES yrkesco.city (city_id);

ALTER TABLE yrkesco.permanent_employ_info ADD FOREIGN KEY (permanent_ed_id) REFERENCES yrkesco.permanent_educator (permanent_ed_id);

ALTER TABLE yrkesco.permanent_employ_info ADD FOREIGN KEY (prog_manager_id) REFERENCES yrkesco.program_manager (prog_manager_id);

ALTER TABLE yrkesco.permanent_employ_info ADD FOREIGN KEY (address_id) REFERENCES yrkesco.address (address_id);

ALTER TABLE yrkesco.educator ADD FOREIGN KEY (permanent_ed_id) REFERENCES yrkesco.permanent_educator (permanent_ed_id);

ALTER TABLE yrkesco.educator ADD FOREIGN KEY (prog_manager_id) REFERENCES yrkesco.program_manager (prog_manager_id);

ALTER TABLE yrkesco.educator ADD FOREIGN KEY (consultant_id) REFERENCES yrkesco.consultant (consultant_id);

ALTER TABLE yrkesco.consultant ADD FOREIGN KEY (organization_nr) REFERENCES yrkesco.consulting_company (organization_nr);

ALTER TABLE yrkesco.consulting_company ADD FOREIGN KEY (address_id) REFERENCES yrkesco.address (address_id);

ALTER TABLE yrkesco.consultant_info ADD FOREIGN KEY (consultant_id) REFERENCES yrkesco.consultant (consultant_id);

ALTER TABLE yrkesco.consultant_info ADD FOREIGN KEY (address_id) REFERENCES yrkesco.address (address_id);

ALTER TABLE yrkesco.educator_course ADD FOREIGN KEY (educator_id) REFERENCES yrkesco.educator (educator_id);

ALTER TABLE yrkesco.educator_course ADD FOREIGN KEY (course_code) REFERENCES yrkesco.course (course_code);

ALTER TABLE yrkesco.course_class ADD FOREIGN KEY (course_code) REFERENCES yrkesco.course (course_code);

ALTER TABLE yrkesco.course_class ADD FOREIGN KEY (class_id) REFERENCES yrkesco.class (class_id);
