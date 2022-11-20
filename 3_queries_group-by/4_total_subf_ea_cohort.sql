SELECT count(assignment_submissions.*) as total_submissions, cohorts.name as cohort
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;