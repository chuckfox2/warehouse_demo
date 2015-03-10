- view: adm_lu_transstage
  sql_table_name: ADM_LU_TRANSSTAGE
  fields:

  - dimension: trans_stage_code
    type: int
    sql: ${TABLE}.TransStageCode

  - dimension: trans_stage_desc
    sql: ${TABLE}.TransStageDesc

  - measure: count
    type: count
    drill_fields: []

