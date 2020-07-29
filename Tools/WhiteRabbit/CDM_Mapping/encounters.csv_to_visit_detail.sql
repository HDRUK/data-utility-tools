
INSERT INTO visit_detail
(
	visit_detail_id,
	person_id,
	visit_detail_concept_id,
	visit_detail_start_date,
	visit_detail_start_datetime,
	visit_detail_end_date,
	visit_detail_end_datetime,
	visit_detail_type_concept_id,
	provider_id,
	care_site_id,
	visit_detail_source_value,
	visit_detail_source_concept_id,
	admitting_source_value,
	admitting_source_concept_id,
	admitted_from_source_value,
	admitted_from_concept_id,
	preceding_visit_detail_id,
	visit_detail_parent_id,
	visit_occurrence_id
)
SELECT
 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	visit_detail_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	person_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	visit_detail_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	visit_detail_start_date,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	visit_detail_start_datetime,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	visit_detail_end_date,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	visit_detail_end_datetime,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	visit_detail_type_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	provider_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	care_site_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	visit_detail_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	visit_detail_source_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	admitting_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	admitting_source_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	admitted_from_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	admitted_from_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	preceding_visit_detail_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	visit_detail_parent_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	visit_occurrence_id

FROM encounters.csv
;