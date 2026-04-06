SELECT date_id,
       make_name,
       COUNT(DISTINCT lead_id) AS Unique_leads,
       COUNT(DISTINCT partner_id) AS Unique_partners
FROM easy.dailysales1693
GROUP BY date_id, make_name;