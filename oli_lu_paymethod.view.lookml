- view: oli_lu_paymethod
  sql_table_name: OLI_LU_PAYMETHOD
  fields:

  - dimension: payment_method
    type: int
    sql: ${TABLE}.PaymentMethod

  - dimension: payment_method_desc
    sql: ${TABLE}.PaymentMethodDesc

  - measure: count
    type: count
    drill_fields: []

