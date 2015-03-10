- view: oli_lu_reqstat
  sql_table_name: OLI_LU_REQSTAT
  fields:

  - dimension: req_status
    type: int
    sql: ${TABLE}.ReqStatus

  - dimension: req_status_desc
    sql: ${TABLE}.ReqStatusDesc

  - measure: count
    type: count
    drill_fields: []

