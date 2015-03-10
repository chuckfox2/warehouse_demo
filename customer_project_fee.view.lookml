- view: customer_project_fee
  sql_table_name: CustomerProjectFee
  fields:

  - dimension: contract_number
    sql: ${TABLE}.ContractNumber

  - dimension: customer_id
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: fee_id
    sql: ${TABLE}.FeeId

  - dimension_group: import
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ImportDate

  - dimension: project_class
    sql: ${TABLE}.ProjectClass

  - dimension: project_number
    sql: ${TABLE}.ProjectNumber

  - measure: count
    type: count
    drill_fields: [customer.customer_id, customer.customer_name, customer.customer_short_name]

