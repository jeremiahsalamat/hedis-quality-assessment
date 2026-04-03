-- Requirement 2

DROP TABLE IF EXISTS #TotalHealthData;
DROP TABLE IF EXISTS #Plan_Type;

SELECT 
 member_id
,plan_type
INTO #TotalHealthData FROM
(
	SELECT DISTINCT
	 member_id
	,plan_type 
	FROM dbo.hedis_blood_pressure

	UNION

	SELECT DISTINCT
	member_id
	,plan_type 
	FROM dbo.hedis_breast_cancer_screening

	UNION 

	SELECT DISTINCT
	member_id
	,plan_type 
	FROM dbo.hedis_diabetes_care

	UNION

	SELECT DISTINCT
	member_id
	,plan_type 
	FROM dbo.hedis_medication_adherence
) AS combined;



	SELECT DISTINCT
	 thd.member_id
	,CASE 
		WHEN thd.plan_type LIKE '%PPO%' THEN 'PPO'
		WHEN thd.plan_type LIKE '%HMO%' THEN 'HMO'
	 ELSE thd.plan_type
	END AS Plan_type
INTO #Plan_Type
FROM #TotalHealthData thd;

SELECT Plan_type AS [Health Plan], COUNT(#Plan_type.member_id) AS [Total Members]
FROM #Plan_type
GROUP BY 
#Plan_type.Plan_type
ORDER BY
[Total Members] ASC;
