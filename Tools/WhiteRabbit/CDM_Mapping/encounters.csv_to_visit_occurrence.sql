USE OMOP_DB
GO
INSERT INTO visit_occurrence
(
	visit_occurrence_id,
	person_id,
	visit_concept_id,
	visit_start_date,
	visit_start_datetime,
	visit_end_date,
	visit_end_datetime,
	visit_type_concept_id,
	provider_id,
	care_site_id,
	visit_source_value,
	visit_source_concept_id,
	admitted_from_concept_id,
	admitted_from_source_value,
	discharge_to_concept_id,
	discharge_to_source_value,
	preceding_visit_occurrence_id
)
SELECT
	encounters.id	AS	visit_occurrence_id,

	encounters.patient	AS	person_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	0	AS	visit_concept_id,

	encounters.start	AS	visit_start_date,

	encounters.start	AS	visit_start_datetime,

	encounters.stop	AS	visit_end_date,

	encounters.stop	AS	visit_end_datetime,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	0	AS	visit_type_concept_id,

	encounters.provider	AS	provider_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	care_site_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	visit_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	0	AS	visit_source_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	0	AS	admitted_from_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	admitted_from_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	0	AS	discharge_to_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	discharge_to_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	preceding_visit_occurrence_id

FROM SYNTHEA_DB.dbo.encounters
;