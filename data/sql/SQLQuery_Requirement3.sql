-- Requirement 2

SELECT COUNT(bp.member_id) AS [Patient Count], bp.gender, AVG(bp.systolic_reading) AS [Average Systolic], AVG(bp.diastolic_reading) AS [Average Diastolic]
FROM dbo.hedis_blood_pressure bp
GROUP BY bp.gender;