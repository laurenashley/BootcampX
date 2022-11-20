SELECT students.name as student, avg(assignments.duration) as average_estimated_duration, avg(assignment_submissions.duration) as average_completion_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_completion_duration DESC;