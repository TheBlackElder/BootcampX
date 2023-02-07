SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_assignments 
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
GROUP BY cohort
ORDER BY total_assignments DESC;




-- SELECT sum(assignment_submissions.duration) as total_duration
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id

-- SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
-- FROM cohorts
-- JOIN students ON cohorts.id = cohort_id
-- GROUP BY cohort_name 
-- HAVING count(students.*) >= 18
-- ORDER BY student_count;

-- SELECT cohorts.name as cohort, sum(assignments.*) as total_assignments 
-- FROM cohorts
-- GROUP BY cohort
-- ORDER BY total_assignments DESC;



-- JOIN students ON cohorts.id = cohort_id
-- GROUP BY cohort_name 
-- HAVING sum(*) >= 18
-- ORDER BY student_count;

-- SELECT sum(assignment_submissions.duration) as total_duration
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- WHERE cohorts.name = 'FEB12';


-- SELECT day, count(*) as total_assignments 
-- FROM assignments
-- GROUP BY day
-- HAVING count(*) >= 10
-- ORDER BY day;