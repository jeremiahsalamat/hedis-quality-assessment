-- Requirement 4 

WITH ComplianceData AS (
SELECT
	g.member_id
	,g.plan_type
	,g.region
	,COUNT(g.hedis_measure) AS member_hedis_count
	,SUM(CASE WHEN g.compliance_status = 'Non-Compliant' THEN 1 ELSE 0 END) AS non_compliant_number
	,ROUND(CAST(SUM(CASE WHEN g.compliance_status = 'Non-Compliant' THEN 1 ELSE 0 END) AS NUMERIC) / COUNT(*) * 100,1) AS compliance_percentage
FROM
	dbo.hedis_gaps_in_care g
GROUP BY 
	g.member_id
	,g.plan_type
	,g.region
)

SELECT 
	c.member_id
	,c.plan_type
	,c.region
	,c.member_hedis_count
	,c.non_compliant_number
	,c.compliance_percentage
	,DENSE_RANK() OVER (ORDER BY c.compliance_percentage ASC) AS risk_invite
FROM
	ComplianceData c
WHERE c.compliance_percentage < 50;
