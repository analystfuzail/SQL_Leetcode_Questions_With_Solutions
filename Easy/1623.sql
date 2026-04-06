SELECT a.student_name AS 'MemberA',
       b.student_name AS 'MemberB',
       c.student_name AS 'MemberC'
FROM easy.schoola1623 a JOIN easy.schoolb1623 b
    ON a.student_id <> b.student_id AND a.student_name <> b.student_name
JOIN easy.schoolc1623 c
    ON a.student_id <> c.student_id AND a.student_name <> c.student_name
    AND b.student_id <> c.student_id AND b.student_name <> c.student_name;