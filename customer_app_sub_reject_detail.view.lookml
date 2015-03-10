- view: customer_app_sub_reject_detail
  sql_table_name: CustomerAppSubRejectDetail
  fields:

  - dimension: reject_code
    type: int
    sql: ${TABLE}.RejectCode

  - dimension: reject_id
    type: int
    sql: ${TABLE}.RejectID

  - dimension: trans_identifier
    sql: ${TABLE}.TransIdentifier

  - measure: count
    type: count
    drill_fields: []

