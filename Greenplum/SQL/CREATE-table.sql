SET
	client_min_messages = log;
CREATE EXTENSION pxf;
CREATE EXTERNAL TABLE ad_druid_initiall_opt2_v2_d25 (
	msisdn text,
	sub_domain_name text,
	last_usage_dt text,
	age_val text,
	gender_val text,
	income_val text,
	social_status_val text,
	pref_home_city_name text
) LOCATION (
	'pxf://apps/hive/warehouse/sandbox.db/ad_druid_initiall_opt2_v2_d25?PROFILE=hdfs:parquet'
) FORMAT 'CUSTOM' (FORMATTER = 'pxfwritable_import');
SELECT
	*
FROM
	ad_druid_initiall_opt2_v2_d25
SELECT
	DISTINCT count(msisdn)
FROM
	ad_druid_initiall_opt2_v2_d25 CREATE TABLE ad_druid_initiall_opt2_v2_d25_internal (
		msisdn text,
		sub_domain_name text,
		last_usage_dt text,
		age_val text,
		gender_val text,
		income_val text,
		social_status_val text,
		pref_home_city_name text
	)
SELECT
	*
FROM
	ad_druid_initiall_opt2_v2_d25_internal
INSERT INTO
	ad_druid_initiall_opt2_v2_d25_internal (
		msisdn,
		sub_domain_name,
		last_usage_dt,
		age_val,
		gender_val,
		income_val,
		social_status_val,
		pref_home_city_name
	)
SELECT
	*
FROM
	ad_druid_initiall_opt2_v2_d25 CREATE USER devops WITH PASSWORD 'devopsdevopsdevops' CREATEDB NOSUPERUSER;
GRANT CONNECT ON DATABASE testdata TO devops;
GRANT USAGE ON SCHEMA public TO devops;
GRANT
SELECT
,
INSERT
,
UPDATE
,
	DELETE ON ALL TABLES IN SCHEMA public TO devops;
GRANT ALL PRIVILEGES ON DATABASE testdata TO devops;
ALTER USER devops RESOURCE GROUP default_group
SELECT
	*
FROM
	gp_toolkit.gp_resgroup_config
SELECT
	*
FROM
	gp_toolkit.gp_resgroup_status_per_host
SELECT
	DISTINCT msisdn
FROM
	public.ad_druid_initiall_opt2_v2_d25_internal;
CREATE TABLE bar (a int, b text) WITH (appendoptimized = TRUE, orientation = COLUMN) DISTRIBUTED BY (a);
CREATE TABLE env_mdisdn_domain (
	msisdn text,
	sub_domain_name text,
	last_usage_dt date,
	age_val text,
	gender_val text,
	income_val text,
	social_status_val text,
	pref_home_city_name text
) WITH (appendoptimized = TRUE, orientation = COLUMN) DISTRIBUTED BY (msisdn) PARTITION BY RANGE (last_usage_dt) (START (date '2022-09-01') INCLUSIVEEND (date '2022-09-30') EXCLUSIVE EVERY (INTERVAL '1 day')
) DROP TABLE env_mdisdn_domain
INSERT INTO
	env_mdisdn_domain (
		msisdn,
		sub_domain_name,
		last_usage_dt,
		age_val,
		gender_val,
		income_val,
		social_status_val,
		pref_home_city_name
	)
SELECT
	msisdn,
	sub_domain_name,
	last_usage_dt :: date,
	age_val,
	gender_val,
	income_val,
	social_status_val,
	pref_home_city_name
FROM
	ad_druid_initiall_opt2_v2_d25_external
SELECT
	DISTINCT msisdn
FROM
	env_mdisdn_domain