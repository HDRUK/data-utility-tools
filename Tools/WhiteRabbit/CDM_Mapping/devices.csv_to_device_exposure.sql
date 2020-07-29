
INSERT INTO device_exposure
(
	device_exposure_id,
	person_id,
	device_concept_id,
	device_exposure_start_date,
	device_exposure_start_datetime,
	device_exposure_end_date,
	device_exposure_end_datetime,
	device_type_concept_id,
	unique_device_id,
	quantity,
	provider_id,
	visit_occurrence_id,
	visit_detail_id,
	device_source_value,
	device_source_concept_id
)
SELECT
 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	device_exposure_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	person_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	device_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	device_exposure_start_date,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	device_exposure_start_datetime,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	device_exposure_end_date,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	device_exposure_end_datetime,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	device_type_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	unique_device_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	quantity,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	provider_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	visit_occurrence_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	visit_detail_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	device_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	device_source_concept_id

FROM devices.csv
;