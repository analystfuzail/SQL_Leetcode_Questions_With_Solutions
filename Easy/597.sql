SELECT IFNULL(ROUND(SUM((Total_Request/Total_Send)),2), 0.0) AS AcceptanceRate
FROM ( SELECT COUNT(DISTINCT requester_id, accepter_id) AS Total_Request FROM easy.request_accepted597) AS tmp1,
     ( SELECT COUNT(DISTINCT sender_id, send_to_id) AS Total_Send FROM easy.friendrequest597) AS tmp2;