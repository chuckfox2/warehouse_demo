- view: customer_ledger
  sql_table_name: CustomerLedger
  fields:

  - dimension: balance_forward
    type: number
    sql: ${TABLE}.BalanceForward

  - dimension: credit_amount
    type: number
    sql: ${TABLE}.CreditAmount

  - dimension: customer_id
    type: int
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: debit_amount
    type: number
    sql: ${TABLE}.DebitAmount

  - dimension: ledger_balance
    type: number
    sql: ${TABLE}.LedgerBalance

  - dimension_group: ledger
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LedgerDate

  - dimension: ledger_description
    sql: ${TABLE}.LedgerDescription

  - dimension: license_type
    type: int
    sql: ${TABLE}.LicenseType

  - dimension: updated_by
    sql: ${TABLE}.UpdatedBy

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.UpdatedOn

  - measure: count
    type: count
    drill_fields: [customer.customer_id, customer.customer_name, customer.customer_short_name]

