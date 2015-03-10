- view: oli_lu_finacttype
  sql_table_name: OLI_LU_FINACTTYPE
  fields:

  - dimension: fin_activity_desc
    sql: ${TABLE}.FinActivityDesc

  - dimension: fin_activity_type
    type: int
    sql: ${TABLE}.FinActivityType

  - measure: count
    type: count
    drill_fields: []

