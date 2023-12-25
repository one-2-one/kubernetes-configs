SELECT
     *
FROM
     gp_toolkit.gp_resgroup_config;

SELECT
     *
FROM
     gp_toolkit.gp_resgroup_status;

SELECT
     *
FROM
     gp_toolkit.gp_resgroup_status_per_host;

SELECT
     *
FROM
     gp_toolkit.gp_resgroup_status_per_segment;

SELECT
     *
FROM
     pg_stat_activity;

SELECT
     pg_cancel_backend(17579);

ALTER RESOURCE GROUP admin_group
SET
     memory_spill_ratio 90;

SHOW rg_perseg_mem;
SHOW effective_cache_size;
SHOW application_name;
SHOW authentication_timeout;
SHOW gp_vmem_protect_limit