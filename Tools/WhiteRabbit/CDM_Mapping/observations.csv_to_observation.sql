
INSERT INTO observation
(
	observation_id,
	person_id,
	observation_concept_id,
	observation_date,
	observation_datetime,
	observation_type_concept_id,
	value_as_number,
	value_as_string,
	value_as_concept_id,
	qualifier_concept_id,
	unit_concept_id,
	provider_id,
	visit_occurrence_id,
	visit_detail_id,
	observation_source_value,
	observation_source_concept_id,
	unit_source_value,
	qualifier_source_value,
	observation_event_id,
	obs_event_field_concept_id,
	value_as_datetime
)
SELECT
	observations.csv.encounter	AS	observation_id,

	observations.csv.patient	AS	person_id,

	observations.csv.description	AS	observation_concept_id,

	observations.csv.date	AS	observation_date,

	observations.csv.date	AS	observation_datetime,

	observations.csv.code	AS	observation_type_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	value_as_number,

	observations.csv.value	AS	value_as_string,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	value_as_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	qualifier_concept_id,

	observations.csv.units	AS	unit_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	provider_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	visit_occurrence_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	visit_detail_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	observation_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	observation_source_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	unit_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	qualifier_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	observation_event_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	obs_event_field_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	value_as_datetime

FROM observations.csv
;