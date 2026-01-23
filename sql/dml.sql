-- City
INSERT INTO city (city_name) VALUES
('Stockholm'),
('Göteborg');

-- Postcode
INSERT INTO postcode (postcode, city_id) VALUES
(11122, 1),  
(11123, 1),  
(12113, 1),  
(11422, 1),  
(12473, 1),  
(41111, 2),  
(41112, 2),
(41231, 2),
(42111, 2); 

-- Address
INSERT INTO address (address, postcode) VALUES
('Storgatan 1', 11122),    -- YrkesCo Stockholm
('Kyrkogatan 5', 11123),   -- Studentbostad Stockholm
('Midsommargatan 18', 12113),
('Jordgubbsvägen 7', 11422),
('Stengången 27', 12473),
('Huvudvägen 12', 41111),  -- YrkesCo Göteborg
('Sjögränd 3', 41112),     -- Studentbostad Göteborg
('Snöhögen 15', 41231),
('Kulgatan 89', 42111);

-- Facility
INSERT INTO facility (name, address_id) VALUES
('YrkesCo Stockholm Campus', 1),
('YrkesCo Göteborg Campus', 6);

-- Program
INSERT INTO program (program, program_name, points) VALUES
('ARK', 'Arkitekt', 400),
('SYS', 'Systemutvecklare', 400),
('SKO', 'Skoproduktion', 200),
('KOK', 'Kock', 200);

-- Class - 3 klasser per program, per ort
INSERT INTO class (program, start_date, facility_id) VALUES
-- ARK program (Stockholm)
('ARK', '2024-08-28', 1),  
('ARK', '2025-08-26', 1),  
('ARK', '2026-09-01', 1),  
-- SYS program (Stockholm och Göteborg)
('SYS', '2024-08-28', 1),  
('SYS', '2025-08-25', 1),  
('SYS', '2026-08-27', 1),  
('SYS', '2024-08-28', 2),  
('SYS', '2025-08-25', 2),  
('SYS', '2026-08-29', 2),  
-- SKO program (Stockholm)
('SKO', '2024-08-28', 1),  
('SKO', '2025-09-01', 1),  
('SKO', '2026-08-28', 1),  
-- KOK program (Göteborg)
('KOK', '2024-08-28', 2),  
('KOK', '2025-08-27', 2),  
('KOK', '2026-08-26', 2),
--FRE fristående
(NULL, '2025-01-27', 1);


-- Student
INSERT INTO student (first_name, last_name, class_id, student_email) VALUES
-- ARK studenter
('Marshall', 'Eriksen', 1, 'marshall.eriksen@stud.se'),
('Lily', 'Aldrin', 1, 'lily.aldrin@stud.se'),
('Barney', 'Stinson', 2, 'barney.stinson@stud.se'),
('Robin', 'Scherbatsky', 2, 'robin.scherbatsky@stud.se'),
-- SYS studenter
('Sheldon', 'Cooper', 4, 'sheldon.cooper@stud.se'),
('Leonard', 'Hofstadter', 4, 'leonard.hofstadter@stud.se'),
('Howard', 'Wolowitz', 5, 'howard.wolowitz@stud.se'),
('Raj', 'Koothrappali', 7, 'raj.koothrappali@stud.se'),
('Sylvester', 'Dodd', 8, 'sylvester.dodd@stud.se'),
-- SKO studenter
('Carrie', 'Bradshaw', 10, 'carrie.bradshaw@stud.se'),
('Samantha', 'Jones', 10, 'samantha.jones@stud.se'),
('Kajsa', 'Anka', 11, 'kajsa.anka@stud.se'),
-- KOK studenter
('Musse', 'Pigg', 13, 'musse.pigg@stud.se'),
('Kalle', 'Anka', 14, 'kalle.anka@stud.se');

-- Student info
INSERT INTO student_info (student_id, email, phone_nr, address_id, social_security) VALUES
(1,'marshall@gmail.com', '070-1111111', 2, '198001011111'),
(2,'lily@gmail.com', '070-2222222', 2, '198002022222'),
(3,'barney@awesome.com', '070-3333333', 2, '198003033333'),
(4,'robin@cbc.ca', '070-4444444', 2, '198004044444'),
(5,'sheldon@caltech.edu', '070-5555555', 2, '198005055555'),
(6,'leonard@gmail.com', '070-6666666', 2, '198006066666'),
(7,'howard@nasa.gov', '070-7777777', 2, '198007077777'),
(8,'raj@gmail.com', '070-8888888', 7, '198008088888'),
(9,'sylvester@scorpion.com', '070-88885248', 7, '199108088877'),
(10,'carrie@vogue.com', '070-9999999', 2, '198009099999'),
(11,'samantha@pr.com', '070-1010101', 2, '198010101010'),
(12,'kajsa@gmail.com', '070-1032201', 2, '197510101450'),
(13,'musse@piggelin.com', '070-1212121', 7, '196611081111'),
(14,'kalle@gmail.com', '070-1313131', 7, '197205271212');

-- Program Manager
INSERT INTO program_manager (first_name, last_name, work_email) VALUES
('Leslie', 'Knope', 'leslie.knope@se'),      
('Ron', 'Swanson', 'ron.swanson@se'),        
('Michael', 'Scott', 'michael.scott@se'); 

-- Program-Facility relation
INSERT INTO program_facility (program, prog_manager_id, facility_id) VALUES
-- Leslie Knope hanterar ARK och SKO i Stockholm
('ARK', 1, 1),
('SKO', 1, 1),
-- Ron Swanson hanterar SYS i Stockholm 
('SYS', 2, 1),
-- Michael Scott hanterar SYS och KOK i Göteborg 
('SYS', 3, 2),
('KOK', 3, 2);

-- Permanent Educator
INSERT INTO permanent_educator (first_name, last_name, work_email) VALUES
('Ted', 'Mosby', 'ted.mosby@se'),
('Phoebe', 'Buffay', 'phoebe.buffay@se'),
('Monica', 'Geller', 'monica.geller@se'),
('Walter', 'White', 'walter.white@se'); 

-- Permanent Employee Info
INSERT INTO permanent_employ_info (permanent_ed_id, prog_manager_id, email, phone_nr, address_id, social_security, salary, employment_date) VALUES
(1, NULL, 'ted.mosby@gmail.com', '070-1414141', 5, '197804251313', 45000.00, '2018-01-15'),
(2, NULL, 'phoebe.buffay@gmail.com', '070-1515151', 3, '196802161414', 42000.00, '2019-03-01'),
(3, NULL, 'monica.geller@gmail.com', '070-1616161', 9, '196904221515', 48000.00, '2017-08-20'),
(4, NULL, 'walter.white@gmail.com', '070-1717171', 5, '195809071616', 52000.00, '2020-01-10'),
(NULL, 1, 'Leslie.Knope@gmail.com', '073-1533171', 4, '195809071876', 62000.00, '2020-05-19'),
(NULL, 2, 'Ron.Swanson@gmail.com', '070-7484171', 3, '195809076976', 70000.00, '2021-01-07'),
(NULL, 3, 'Michael.Scott@gmail.com', '072-1678175', 8, '195809072676', 60000.00, '2021-03-18');

-- Consulting Company
INSERT INTO consulting_company (organization_nr, company, f_tax, address_id) VALUES
('5566778899', 'Dunder Mifflin Consulting', TRUE, 1),
('1122334455', 'Stark Industries AB', TRUE, 3);

-- Consultant
INSERT INTO consultant (organization_nr, first_name, last_name, work_email) VALUES
('5566778899', 'Jim', 'Halpert', 'jim.halpert@se'),
('5566778899', 'Pam', 'Beesly', 'pam.beesly@se'),
('1122334455', 'Tony', 'Stark', 'tony.stark@se');

-- Consultant Info
INSERT INTO consultant_info (consultant_id, email, phone_nr, address_id, social_security, hourly_fee, employment_date) VALUES
(1,'jim.halpert@gmail.com', '070-1818181', 1, '197810011717', 850.00, '2022-02-01'),
(2,'pam.beesly@gmail.com', '070-1919191', 1, '197903251818', 800.00, '2022-02-01'),
(3,'tony.stark@stark.com', '070-2020202', 3, '197005291919', 1500.00, '2023-01-15');

-- Educator
INSERT INTO educator (permanent_ed_id, prog_manager_id, consultant_id) VALUES
--(endast permanent)
(1, NULL, NULL),  
(2, NULL, NULL),  
(3, NULL, NULL),  
(4, NULL, NULL),  
--(endast konsult)
(NULL, NULL, 1),   
(NULL, NULL, 2),  
(NULL, NULL, 3);  

-- Courses 
INSERT INTO course (course_code, name, points, freestanding, description) VALUES
-- ARK kurser
('ARK101', 'Basarkitektur med Ted Mosby', 45.0, FALSE, 'Lär dig att designa byggnader och berätta långa historier om ditt förflutna'),
('ARK102', 'Modernistisk design', 30.0, FALSE, 'För dig som vill bygga hus som ser ut som glaslådor'),
('ARK201', 'Stadsplanering', 25.0, FALSE, 'Hur man planerar en stad där alla vill bo - med parker på varje kvarter'),
-- SYS kurser
('SYS101', 'Programmering för nybörjare', 45.0, FALSE, 'Hello World, debugging och kaffe'),
('SYS102', 'Objektorientering', 30, FALSE, 'Klasser, objekt och arv - inte pengar utan kod'),
('SYS201', 'Databaser', 30.0, FALSE, 'SELECT * FROM knowledge WHERE subject = "SQL"'),
('SYS301', 'Avancerad programmering', 25.0, FALSE, 'Nu blir det seriöst - design patterns och clean code'),
-- SKO kurser
('SKO101', 'Grundläggande skotillverkning', 35.0, FALSE, 'Från läder till loafers'),
('SKO102', 'Design av eleganta skor', 20, FALSE, 'För den som vill att fötter ska se bra ut'),
('SKO201', 'Specialskor', 20.0, FALSE, 'När vanliga skor inte räcker till'),
-- KOK kurser
('KOK101', 'Grundläggande matlagning', 45.0, FALSE, 'Knivteknik, såser och Gordon Ramsays bästa svordomar'),
('KOK102', 'Molekylär gastronomi', 20.0, FALSE, 'När mat blir vetenskap'),
('KOK201', 'Restaurangdrift', 15.0, FALSE, 'Mer än bara laga mat - driva ett kök'),
-- Fristående kurser (freestanding = TRUE)
('FRE101', 'Konsten att förhandla', 5.0, TRUE, 'Lär dig av Jordan Belfort - fast lagligt'),
('FRE102', 'Improvisationsteater', 7.5, TRUE, '"Yes, and..." - perfect for meetings'),
('FRE201', 'Sociala medier för yrkesverksamma', 10.0, TRUE, 'Mer än bara kattbilder på Instagram');

-- Educator-Course relation
INSERT INTO educator_course (educator_id, course_code) VALUES
(1, 'ARK101'), 
(1, 'ARK102'), 
(1, 'ARK201'),
(2, 'FRE102'), 
(3, 'KOK101'), 
(3, 'KOK102'),
(4, 'SKO101'), 
(4, 'SKO201'),
(5, 'SYS101'),
(6, 'ARK102'), 
(6, 'SKO102'),
(7, 'SYS301');

-- Course-Class relation 
INSERT INTO course_class (course_code, class_id) VALUES
('ARK101', 1), 
('ARK102', 1), 
('ARK201', 1),
('ARK101', 2), 
('ARK102', 2),
('ARK101', 3),

('SYS101', 4), 
('SYS102', 4), 
('SYS201', 4),
('SYS101', 5), 
('SYS301', 5), 
('SYS102', 7),

('SKO101', 10), 
('SKO102', 10), 
('SKO201', 11),

('KOK101', 13), 
('KOK102', 13),
('KOK201', 14),

('FRE102', 16);