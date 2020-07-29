
INSERT INTO payer_plan_period
(
	payer_plan_period_id,
	person_id,
	contract_person_id,
	payer_plan_period_start_date,
	payer_plan_period_end_date,
	payer_concept_id,
	payer_source_value,
	payer_source_concept_id,
	plan_concept_id,
	plan_source_value,
	plan_source_concept_id,
	contract_concept_id,
	contract_source_value,
	contract_source_concept_id,
	sponsor_concept_id,
	sponsor_source_value,
	sponsor_source_concept_id,
	family_source_value,
	stop_reason_concept_id,
	stop_reason_source_value,
	stop_reason_source_concept_id
)
SELECT
	payers.csv.id	AS	payer_plan_period_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	person_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	contract_person_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	payer_plan_period_start_date,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	payer_plan_period_end_date,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	payer_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	payer_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	payer_source_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	plan_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	plan_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	plan_source_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	contract_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	contract_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	contract_source_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	sponsor_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	sponsor_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	sponsor_source_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	family_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	stop_reason_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	stop_reason_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	stop_reason_source_concept_id

FROM payers.csv
;