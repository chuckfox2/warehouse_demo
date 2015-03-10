- view: investment_fund_mapping
  sql_table_name: InvestmentFundMapping
  fields:

  - dimension: carrier_code
    sql: ${TABLE}.CarrierCode

  - dimension: carrier_name
    sql: ${TABLE}.CarrierName

  - dimension: cusip_num
    sql: ${TABLE}.CusipNum

  - dimension: customer_id
    type: int
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: firm_name
    sql: ${TABLE}.FirmName

  - dimension: product_code
    sql: ${TABLE}.ProductCode

  - dimension: product_full_name
    sql: ${TABLE}.ProductFullName

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - carrier_name
    - product_full_name
    - firm_name
    - customer.customer_id
    - customer.customer_name
    - customer.customer_short_name

