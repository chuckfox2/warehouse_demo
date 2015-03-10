- view: oli_lu_paymentmode
  sql_table_name: OLI_LU_PAYMENTMODE
  fields:

  - dimension: payment_mode
    type: int
    sql: ${TABLE}.PaymentMode

  - dimension: payment_mode_desc
    sql: ${TABLE}.PaymentModeDesc

  - measure: count
    type: count
    drill_fields: []

