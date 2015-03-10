- view: annuity_esignature
  sql_table_name: AnnuityESignature
  fields:

  - dimension: adm_trans_guid
    sql: ${TABLE}.AdmTransGUID

  - dimension: order_id
    sql: ${TABLE}.OrderID

  - dimension: req_status
    type: int
    sql: ${TABLE}.ReqStatus

  - dimension: requirement_id
    sql: ${TABLE}.RequirementID

  - dimension_group: status
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.StatusDate

  - measure: count
    type: count
    drill_fields: []

