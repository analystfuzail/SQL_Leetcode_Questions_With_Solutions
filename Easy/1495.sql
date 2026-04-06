SELECT DISTINCT c.title
FROM easy.program1495 p JOIN easy.content1495 c
    ON p.content_id = c.content_id
WHERE Kids_content = 'Y' AND content_type = 'Movies' AND LEFT(program_date,7) = '2020-06';
