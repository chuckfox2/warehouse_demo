- view: oli_lu_livestype
  sql_table_name: OLI_LU_LIVESTYPE
  fields:

  - dimension: lives_desc
    sql: ${TABLE}.LivesDesc

  - dimension: lives_type
    type: int
    sql: ${TABLE}.LivesType

  - measure: count
    type: count
    drill_fields: []

