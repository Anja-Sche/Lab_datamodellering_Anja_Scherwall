-- Ny klass

INSERT INTO program (program, program_name, points) VALUES
('SKMT', 'Skämtarkonst', 200);

INSERT INTO class (program, start_date,facility_id) VALUES
('SKMT', '2026-08-26', 2),
('SKMT', '2027-08-20', 2),
('SKMT', '2026-09-02', 2);

INSERT INTO course(course_code, name, points, description)
('SKMT01', 'Skämtets Mekanik: Grundkurs', 30, 'Lär dig bygga upp ett skämt från observation till punchline. Inkluderar övningar i överdrift, underdrift och timing'),
('SARK03', 'Sarkasm & Torr Humor', 20, 'En studie i den kärva konsten. Hur man levererar perfekt kalibrerade kommentarer och tolkar omvärldens brist på humor.'),
('SLAP04', 'Slapstick & Fysisk Komik', 20, 'Praktisk kurs i pratfalls, mim och kroppsspråk som får andra att skratta. Rekommenderar skyddsutrustning.');

INSERT INTO course_class (course_code, class_id) VALUES
('SKMT01', 17), 
('SARK03', 17),
('SLAP04', 17);




-- Ny utbildningsledare och fast utbildare

INSERT INTO postcode (postcode, city) VALUES
(41723, 2),
(12365, 1);

INSERT INTO address (address, postcode) VALUES
('Skämtgränd 3', 41723),
('Skojjgatan 97', 12365);

INSERT INTO program_manager (first_name, last_name, work_email) VALUES
('Mr.', 'Bean', 'mr.bean@se');

INSERT INTO permanent_educator (first_name, last_name, work_email) VALUES
('Robert', 'Gustafsson', 'robert.gustafsson@se');

INSERT INTO permanent_employ_info (permanent_ed_id, prog_manager_id, email, phone_nr, address_id, social_security, salary, employment_date) VALUES
(NULL, 4, 'mr.bean@teddy.com', '070-1443561', 10, '195501068976', 60000.00, '2025-03-25'),
(5, NULL, 'robert@sverigesroligasteman.se', '070-9876543', 11, '196412209213', 55000.00, '2025-05-29');


INSERT INTO educator (permanent_ed_id, prog_manager_id, consultant_id) VALUES
(NULL, 4, NULL), 
(5, NULL, NULL);

INSERT INTO program_facility (program, prog_manager_id, facility_id) VALUES
('SKMT', 4, 2);