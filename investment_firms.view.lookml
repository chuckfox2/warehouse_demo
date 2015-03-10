- view: investment_firms
  sql_table_name: InvestmentFirms
  fields:

  - dimension: dba
    sql: ${TABLE}.DBA

  - dimension: firm_name
    sql: ${TABLE}.FirmName

  - measure: count
    type: count
    drill_fields: [firm_name]

