- view: investment_firm_cusip
  sql_table_name: InvestmentFirmCusip
  fields:

  - dimension: cusip_num
    sql: ${TABLE}.CusipNum

  - dimension: firm_name
    sql: ${TABLE}.FirmName

  - measure: count
    type: count
    drill_fields: [firm_name]

