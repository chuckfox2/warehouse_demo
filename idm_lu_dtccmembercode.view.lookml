- view: idm_lu_dtccmembercode
  sql_table_name: IDM_LU_DTCCMEMBERCODE
  fields:

  - dimension: dtccmember_code
    type: int
    sql: ${TABLE}.DTCCMemberCode

  - dimension: dtccmember_name
    sql: ${TABLE}.DTCCMemberName

  - dimension: updated_by
    sql: ${TABLE}.UpdatedBy

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.UpdatedOn

  - measure: count
    type: count
    drill_fields: [dtccmember_name]

