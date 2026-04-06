SELECT s1.sub_id AS Post_id,
       COUNT(DISTINCT s2.sub_id) AS No_of_comments
FROM easy.submissions1241 s1 LEFT JOIN easy.submissions1241 s2
   ON s1.sub_id = s2.parent_id
WHERE s1.parent_id IS NULL
GROUP BY s1.sub_id
ORDER BY s1.sub_id;