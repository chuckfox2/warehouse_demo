- view: oli_lu_gender
  sql_table_name: OLI_LU_GENDER
  fields:

  - dimension: gender
    type: int
    sql: ${TABLE}.Gender

  - dimension: gender_description
    sql: ${TABLE}.GenderDescription

  - measure: count
    type: count
    drill_fields: []

