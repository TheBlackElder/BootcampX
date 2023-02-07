

-- SELECT assignments.day as day,  count(assignments.day) as total_assignments
-- FROM assignments
-- GROUP BY assignments.day
-- ORDER BY assignments.day;

SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
ORDER BY day;

SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;


