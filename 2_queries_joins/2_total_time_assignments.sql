-- SELECT sum(*)
-- FROM assignment_submissions as total_duration
-- JOIN assignments ON assignments.id  = assigment_submissions_id 
-- WHERE assignment.name = 'Ibrahim Schimmel' AND
-- assignment_submissions.duration IN (*);


SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';

