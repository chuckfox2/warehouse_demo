- view: customer
  sql_table_name: Customer
  fields:

  - dimension: customer_id
    primary_key: true
    type: int
    sql: ${TABLE}.CustomerID

  - dimension: associated_firm_id
    sql: ${TABLE}.AssociatedFirmID

  - dimension: customer_name
    sql: ${TABLE}.CustomerName

  - dimension: customer_notes
    sql: ${TABLE}.CustomerNotes

  - dimension: customer_short_name
    sql: ${TABLE}.CustomerShortName

  - dimension: invoice_folder
    sql: ${TABLE}.InvoiceFolder

  - dimension: updated_by
    sql: ${TABLE}.UpdatedBy

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.UpdatedOn

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - customer_id
    - customer_name
    - customer_short_name
    - annuity_new_order.count
    - annuity_new_order_staging.count
    - annuity_order.count
    - annuity_order_test.count
    - annuity_order_staging.count
    - customer_app_sub_reject_file.count
    - customer_dtccmember_code.count
    - customer_file_header.count
    - customer_file_type.count
    - customer_invoice.count
    - customer_ledger.count
    - customer_license.count
    - customer_project_fee.count
    - customer_transaction_fee.count
    - customer_transaction_mapping.count
    - idm_lu_distributororgcode.count
    - industry_stats.count
    - investment_fund_mapping.count
    - life_new_order.count
    - life_new_order_staging.count
    - life_order.count
    - life_order_staging.count
    - life_quote.count
    - life_quote_staging.count

