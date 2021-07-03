
SELECT identifier, head, body FROM Avatar AS A
JOIN
(SELECT avatar_id, COUNT(*) AS cnt FROM Profile GROUP BY avatar_id ORDER BY cnt DESC LIMIT 1) AS B
ON A.id = B.avatar_id

 
