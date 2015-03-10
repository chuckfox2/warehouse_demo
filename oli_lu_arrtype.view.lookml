- view: oli_lu_arrtype
  sql_table_name: OLI_LU_ARRTYPE
  fields:

  - dimension: arr_desc
    sql: ${TABLE}.ArrDesc

  - dimension: arr_type
    type: int
    sql: ${TABLE}.ArrType

  - measure: count
    type: count
    drill_fields: []

