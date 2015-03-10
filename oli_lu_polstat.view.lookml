- view: oli_lu_polstat
  sql_table_name: OLI_LU_POLSTAT
  fields:

  - dimension: policy_desc
    sql: ${TABLE}.PolicyDesc

  - dimension: policy_status
    type: int
    sql: ${TABLE}.PolicyStatus

  - measure: count
    type: count
    drill_fields: []

