- view: idm_lu_feetype
  sql_table_name: IDM_LU_FEETYPE
  fields:

  - dimension: fee_amount
    type: number
    sql: ${TABLE}.FeeAmount

  - dimension: fee_description
    sql: ${TABLE}.FeeDescription

  - dimension: fee_type
    type: int
    sql: ${TABLE}.FeeType

  - dimension: updated_by
    sql: ${TABLE}.UpdatedBy

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.UpdatedOn

  - measure: count
    type: count
    drill_fields: []

