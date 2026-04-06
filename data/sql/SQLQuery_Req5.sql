-- Requirement 5

WITH AdherentInfo AS (
	SELECT 
	m.provider_id
	,COUNT(*) AS total_members
	,SUM(CASE WHEN m.is_adherent = 1 THEN 1 ELSE 0 END) AS adherent_count
	,ROUND(CAST(SUM(CASE WHEN m.is_adherent = 1 THEN 1 ELSE 0 END) AS NUMERIC)/COUNT(*) * 100,1) AS adherent_percentage
	FROM 
	hedis_medication_adherence m
	GROUP BY m.provider_id
)

SELECT
	a.provider_id
	,a.total_members
	,a.adherent_count
	,a.adherent_percentage
	,DENSE_RANK() OVER (ORDER BY a.adherent_percentage DESC) AS provider_rank
FROM AdherentInfo a;