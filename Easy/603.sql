SELECT DISTINCT e1.seat_id
FROM easy.seats603 e1 JOIN easy.seats603 e2
ON abs(e1.seat_id - e2.seat_id) = 1
WHERE e1.free = '1' AND e2.free = '1'
ORDER BY e1.seat_id;
