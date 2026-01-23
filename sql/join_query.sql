-- Query för att få fram elever och deras uppgifter som går program ARK

SELECT 
    s.first_name || ' ' || s.last_name AS student_name,
    si.email,
    si.phone_nr,
    a.address,
    p.postcode,
    ci.city_id,
    si.social_security
FROM student s
    LEFT JOIN class cl ON s.class_id = cl.class_id
    LEFT JOIN stud_info si ON s.student_id = si.student_id
    LEFT JOIN address a ON si.address_id = a.address_id
    LEFT JOIN postcode p ON a.postcode = p.postcode
    LEFT JOIN city ci ON p.city_id = c.city_id
WHERE cl.class = 'ARK';




-- Query för att se vilka lärare som har vilka kurser (även om de inte är tilldelade kurs ännu)

SELECT 
    DISTINCT co.name AS course_name,
    COALESCE(
        pe.first_name || ' ' || pe.last_name AS ,
        c.first_name || ' ' || c.last_name AS ,
        pm.first_name || ' ' || pm.last_name,
    ) AS teacher
FROM educator e 
    LEFT JOIN permanent_educator pe ON e.permanent_ed_id = pe.permanent_ed_id
    LEFT JOIN program_manager pm ON e.prog_manager_id = pm.prog_manager_id
    LEFT JOIN consultant c ON e.consultant_id = c.consultant_id
    LEFT JOIN educator_course ec ON e.educator_id = ec.educator_id
    LEFT JOIN course co ON ec.course_code = co.course_code;




-- Query för att se vilka program som finns på vilken anläggning och vem som är UL

SELECT 
    p.program,
    p.program_name,
    pm.first_name || ' ' || pm.last_name AS program_manager,
    f.name AS facility
FROM program p
    LEFT JOIN program_facility pf ON p.program = pf.program
    LEFT JOIN program_manager pm ON pf.prog_manager_id = pm.prog_manager_id
    LEFT JOIN facility f ON pf.facility_id = f.facility_id;