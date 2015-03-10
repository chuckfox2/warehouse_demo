- view: dtccmc
  sql_table_name: DTCCMC
  fields:

  - dimension: dtccmember_code
    sql: ${TABLE}.DTCCMemberCode

  - dimension: dtccmember_name
    sql: ${TABLE}.DTCCMemberName

  - measure: count
    type: count
    drill_fields: [dtccmember_name]

