
INSERT INTO condition_occurrence
(
	condition_occurrence_id,
	person_id,
	condition_concept_id,
	condition_start_date,
	condition_start_datetime,
	condition_end_date,
	condition_end_datetime,
	condition_type_concept_id,
	stop_reason,
	provider_id,
	visit_occurrence_id,
	visit_detail_id,
	condition_source_value,
	condition_source_concept_id,
	condition_status_source_value,
	condition_status_concept_id
)
SELECT
	conditions.csv.encounter	AS	condition_occurrence_id,

	conditions.csv.patient	AS	person_id,

	conditions.csv.code	AS	condition_concept_id,

	conditions.csv.start	AS	condition_start_date,

	conditions.csv.start	AS	condition_start_datetime,

	conditions.csv.stop	AS	condition_end_date,

	conditions.csv.stop	AS	condition_end_datetime,

	conditions.csv.description	AS	condition_type_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	stop_reason,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	provider_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	visit_occurrence_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	visit_detail_id,

	conditions.csv.description	AS	condition_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	condition_source_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	condition_status_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	condition_status_concept_id

FROM conditions.csv
;