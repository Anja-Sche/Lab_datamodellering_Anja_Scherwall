-- Bryter mot CHECK-constraint att program kan vara 200 eller 400 poäng.

INSERT INTO program (program, program_name, points) VALUES
('SKMT', 'Skämtarkonst', 100);

INSERT INTO class (program, start_date,facility_id) VALUES
('SKMT', '2026-08-26', 2),
('SKMT', '2027-08-20', 2),
('SKMT', '2026-09-02', 2);