
INSERT INTO person
(
	person_id,
	gender_concept_id,
	year_of_birth,
	month_of_birth,
	day_of_birth,
	birth_datetime,
	death_datetime,
	race_concept_id,
	ethnicity_concept_id,
	location_id,
	provider_id,
	care_site_id,
	person_source_value,
	gender_source_value,
	gender_source_concept_id,
	race_source_value,
	race_source_concept_id,
	ethnicity_source_value,
	ethnicity_source_concept_id
)
SELECT
	patients.id	AS	person_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	0	AS	gender_concept_id,

	0	AS	year_of_birth,

	0	AS	month_of_birth,

	0	AS	day_of_birth,

	patients.birthdate	AS	birth_datetime,

	patients.deathdate	AS	death_datetime,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	0	AS	race_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	0	AS	ethnicity_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	location_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	provider_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	care_site_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	0	AS	person_source_value,

	patients.gender	AS	gender_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	0	AS	gender_source_concept_id,

	patients.race	AS	race_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	0	AS	race_source_concept_id,

	patients.ethnicity	AS	ethnicity_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	0	AS	ethnicity_source_concept_id

FROM SYNTHEA_DB.dbo.patients
;