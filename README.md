dbt run --select +final_visit_hour -t kbc_prod --profiles-dir ./

```
cat ~/.dbt/sources.env 
export DBT_KBC_DATABASE="KEBOOLA_33"
export DBT_KBC_SCHEMA="WORKSPACE_410407633"
export DBT_KBC_WAREHOUSE="KEBOOLA_PROD"
export DBT_KBC_ACCOUNT="keboola.eu-central-1"
export DBT_KBC_TYPE="snowflake"
export DBT_KBC_USER="KEBOOLA_WORKSPACE_410407633"
export DBT_KBC_PASSWORD="xxx"
```