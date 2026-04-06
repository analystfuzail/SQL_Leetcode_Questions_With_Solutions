SELECT s1.student_id, 
       s1.student_name, 
       s2.subject_name, 
       COUNT(e.student_id) AS attended_exams
FROM easy.students1280 s1 JOIN easy.Subjects1280 s2
LEFT JOIN easy.Examinations1280 e
ON s1.student_id = e.student_id AND s2.subject_name = e.subject_name
GROUP BY s1.student_id, subject_name;