SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at-started_at) as duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;


-- SELECT students.name as student, teachers.name as teacher, assignments.name as assignment,
--  avg(assistance_requests.completed_at
--  - assistance_requests.started_at) as duration
-- FROM assistance_requests
-- JOIN students ON students.id = student_id
-- JOIN teachers ON teachers.id = teacher_id
-- JOIN assignments ON assignments.id = assignment_id
-- GROUP BY teachers.name, students.name, assignments.name
-- ORDER BY duration ASC;

