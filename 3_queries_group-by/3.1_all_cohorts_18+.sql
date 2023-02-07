-- SELECT students.cohort_id as cohort_name, count(students.id)
-- FROM students 
-- JOIN cohorts ON cohorts.id =  students.cohort_id, AND students ON students.id = student_id 
-- HAVING count(*) >= 18
-- ORDER BY count(students.id) ASC;

SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name 
HAVING count(students.*) >= 18
ORDER BY student_count;