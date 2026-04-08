-- Requirement 1

WITH bp_compliance AS (
SELECT 
 bp.member_id
 -- Correcting compliance status
 -- of high systolic and/or diastolic readings 
,CASE
	WHEN bp.systolic_reading > 140
		OR bp.diastolic_reading > 90 THEN 
		'Non-Compliant'
	ELSE gp.compliance_status
 END AS compliance_status
 -- Correcting bp_adequately_controlled readings
 -- of high systolic and diastolic readings
,CASE 
	WHEN bp.systolic_reading > 140
		OR bp.diastolic_reading > 90 THEN
		0
	ELSE bp.bp_adequately_controlled
END AS bp_adequately_controlled
-- adding systolic and diastolic as extra data
,bp.systolic_reading
,bp.diastolic_reading

FROM dbo.hedis_blood_pressure bp
INNER JOIN dbo.hedis_gaps_in_care gp 
	ON bp.member_id = gp.member_id)

-- NULL data for some systolic and diastolic values due to
-- blood pressure data not taken on some patients
-- as some patients blood pressure was not taken
SELECT * FROM bp_compliance bpc
WWHERE bpc.compliance_status = 'Compliant';
