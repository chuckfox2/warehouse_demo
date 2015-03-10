- view: app_sub_reject_code
  sql_table_name: AppSubRejectCode
  fields:

  - dimension: reject_code
    type: int
    sql: ${TABLE}.RejectCode

  - dimension: reject_reason
    sql: ${TABLE}.RejectReason

  - measure: count
    type: count
    drill_fields: []

