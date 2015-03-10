- view: oli_lu_acctdes
  sql_table_name: OLI_LU_ACCTDES
  fields:

  - dimension: account_description
    sql: ${TABLE}.AccountDescription

  - dimension: account_designation
    type: int
    sql: ${TABLE}.AccountDesignation

  - measure: count
    type: count
    drill_fields: []

