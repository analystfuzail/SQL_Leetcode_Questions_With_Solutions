SELECT event_day AS Day, 
       Emp_id, 
       SUM(out_time - in_time) AS Total_time
FROM easy.employeeevents1741
GROUP BY emp_id, event_day;