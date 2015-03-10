- view: customer_invoice
  sql_table_name: CustomerInvoice
  fields:

  - dimension: batch_number
    sql: ${TABLE}.BatchNumber

  - dimension_group: billing
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.BillingDate

  - dimension_group: billing_end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.BillingEndDate

  - dimension: billing_note
    sql: ${TABLE}.BillingNote

  - dimension_group: billing_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.BillingStartDate

  - dimension: contract_number
    sql: ${TABLE}.ContractNumber

  - dimension: customer_id
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: fee_amount
    type: number
    sql: ${TABLE}.FeeAmount

  - dimension: fee_id
    sql: ${TABLE}.FeeId

  - dimension: invoice_number
    type: int
    sql: ${TABLE}.InvoiceNumber

  - dimension: license_type
    type: int
    sql: ${TABLE}.LicenseType

  - dimension: line_item_seq
    type: int
    sql: ${TABLE}.LineItemSeq

  - dimension: project_class
    sql: ${TABLE}.ProjectClass

  - dimension: project_number
    sql: ${TABLE}.ProjectNumber

  - measure: count
    type: count
    drill_fields: [customer.customer_id, customer.customer_name, customer.customer_short_name]

