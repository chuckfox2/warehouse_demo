- view: adm_lu_purchdate
  sql_table_name: ADM_LU_PURCHDATE
  fields:

  - dimension: purch_date_code
    type: int
    sql: ${TABLE}.PurchDateCode

  - dimension: purch_date_desc
    sql: ${TABLE}.PurchDateDesc

  - measure: count
    type: count
    drill_fields: []

