- view: investment2014
  sql_table_name: Investment2014
  fields:

  - dimension: firm_name
    sql: ${TABLE}.FirmName

  - dimension: invested_amount
    sql: ${TABLE}.InvestedAmount

  - dimension: investment_count
    type: int
    sql: ${TABLE}.InvestmentCount

  - measure: count
    type: count
    drill_fields: [firm_name]

