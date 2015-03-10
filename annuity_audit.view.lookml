- view: annuity_audit
  sql_table_name: AnnuityAudit
  fields:

  - dimension: adm_trans_guid
    sql: ${TABLE}.AdmTransGUID

  - dimension: application_name
    sql: ${TABLE}.ApplicationName

  - dimension_group: audit
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.AuditDate

  - dimension: audit_info_guid
    sql: ${TABLE}.AuditInfoGUID

  - dimension: audit_stage_code
    type: int
    sql: ${TABLE}.AuditStageCode

  - dimension: order_id
    sql: ${TABLE}.OrderID

  - dimension: server_name
    sql: ${TABLE}.ServerName

  - dimension: user_name
    sql: ${TABLE}.UserName

  - measure: count
    type: count
    drill_fields: [user_name, server_name, application_name]

