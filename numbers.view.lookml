- view: numbers
  sql_table_name: Numbers
  fields:

  - dimension: number
    type: int
    sql: ${TABLE}.Number

  - measure: count
    type: count
    drill_fields: []

