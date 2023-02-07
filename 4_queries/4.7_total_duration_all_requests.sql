SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration;


-- SELECT cohorts.name as cohort, sum(completed_at-created_at) as total_duration
-- FROM assistance_requests
-- JOIN students ON students.id = student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- JOIN teachers ON teachers.id = teacher_id
-- GROUP BY cohorts.name
-- ORDER BY total_duration;


