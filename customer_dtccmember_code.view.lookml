- view: customer_dtccmember_code
  sql_table_name: CustomerDTCCMemberCode
  fields:

  - dimension: customer_id
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: dtccmember_code
    sql: ${TABLE}.DTCCMemberCode

  - measure: count
    type: count
    drill_fields: [customer.customer_id, customer.customer_name, customer.customer_short_name]

