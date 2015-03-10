- view: oli_lu_arrsubtype
  sql_table_name: OLI_LU_ARRSUBTYPE
  fields:

  - dimension: arr_sub_desc
    sql: ${TABLE}.ArrSubDesc

  - dimension: arr_sub_type
    type: int
    sql: ${TABLE}.ArrSubType

  - measure: count
    type: count
    drill_fields: []

