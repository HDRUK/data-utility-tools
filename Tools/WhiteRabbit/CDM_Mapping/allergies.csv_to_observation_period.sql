
INSERT INTO observation_period
(
	observation_period_id,
	person_id,
	observation_period_start_date,
	observation_period_end_date,
	period_type_concept_id
)
SELECT
	allergies.encounter AS	observation_period_id,

	allergies.patient	AS	person_id,

	convert(datetime2, allergies.start, 102)	AS	observation_period_start_date,

	convert(datetime2, ISNULL(allergies.stop, GETDATE()), 102)	AS	observation_period_end_date,

	Cast(allergies.code as Int)	AS	period_type_concept_id

FROM SYNTHEA_DB.dbo.allergies
;