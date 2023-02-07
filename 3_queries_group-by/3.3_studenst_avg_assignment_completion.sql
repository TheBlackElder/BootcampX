SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN students ON students.id = assignment_submissions.student_id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;


-- SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_assignments 
-- FROM cohorts
-- JOIN students ON cohorts.id = students.cohort_id
-- JOIN assignment_submissions ON students.id = assignment_submissions.student_id
-- GROUP BY cohort
-- ORDER BY total_assignments DESC;


SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;