

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';


-- SELECT sum(assignment_submissions.duration) as total_duration
-- FROM assignment_submissions
-- JOIN cohorts ON cohorts.id =  students.cohort_id, AND students ON students.id = student_id 
-- WHERE cohorts.start_date = 'FEB12';


-- Currently enrolled total submissions
-- SELECT students.name as student, count(assignment_submissions.*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.end_date IS NULL
-- GROUP BY students.name;

-- Agregate data
-- SELECT students.name as student, count(assignment_submissions.*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.end_date IS NULL AND  
-- GROUP BY students.name
-- HAVING count(assignment_submissions.*) < 100;
