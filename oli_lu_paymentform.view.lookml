- view: oli_lu_paymentform
  sql_table_name: OLI_LU_PAYMENTFORM
  fields:

  - dimension: payment_desc
    sql: ${TABLE}.PaymentDesc

  - dimension: payment_form
    type: int
    sql: ${TABLE}.PaymentForm

  - measure: count
    type: count
    drill_fields: []

