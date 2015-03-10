- view: customer_transaction_fee
  sql_table_name: CustomerTransactionFee
  fields:

  - dimension: customer_id
    type: int
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: fee_amount
    type: number
    sql: ${TABLE}.FeeAmount

  - dimension_group: fee_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.FeeStartDate

  - dimension: fee_type
    type: int
    sql: ${TABLE}.FeeType

  - dimension: tier_floor
    type: int
    sql: ${TABLE}.TierFloor

  - dimension: tier_limit
    type: int
    sql: ${TABLE}.TierLimit

  - dimension: updated_by
    sql: ${TABLE}.UpdatedBy

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.UpdatedOn

  - measure: count
    type: count
    drill_fields: [customer.customer_id, customer.customer_name, customer.customer_short_name]

