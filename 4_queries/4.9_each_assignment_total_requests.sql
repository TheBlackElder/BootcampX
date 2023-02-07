-- SELECT assignments.id as id,  assignments.name as name, assignments.day as day, assignments.chapter as chapter, count(assistance_requests) as total_requests
-- FROM  assisgnments 
-- JOIN assistance_requests ON assignments.id = assignment_id
-- GROUP BY assignments.id
-- ORDER BY total_requests DESC;



SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;

-- FROM  assisgnments 
-- JOIN assistance_requests ON assignment_id = assignments.id

-- FROM assistance_requests
-- JOIN assisgnments ON assignments.id = assignment_id

-- SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_assignments 
-- FROM cohorts
-- JOIN students ON cohorts.id = students.cohort_id
-- JOIN assignment_submissions ON students.id = assignment_submissions.student_id
-- GROUP BY cohort
-- ORDER BY total_assignments DESC;

-- SELECT avg (total_duration) as average_total_duration
-- FROM (
--   SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
--   FROM assistance_requests
--   JOIN students ON students.id = student_id
--   JOIN cohorts on cohorts.id = cohort_id
--   GROUP BY cohorts.name
--   ORDER BY total_duration
-- ) as total_durations;