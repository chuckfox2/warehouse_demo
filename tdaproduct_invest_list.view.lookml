- view: tdaproduct_invest_list
  sql_table_name: TDAProductInvestList
  fields:

  - dimension: adm_trans_guid
    sql: ${TABLE}.AdmTransGUID

  - dimension_group: import
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ImportDate

  - dimension: invest_product_carrier_code
    sql: ${TABLE}.InvestProductCarrierCode

  - dimension: invest_product_carrier_name
    sql: ${TABLE}.InvestProductCarrierName

  - dimension: invest_product_code
    sql: ${TABLE}.InvestProductCode

  - dimension: invest_product_cusipnum
    sql: ${TABLE}.InvestProductCUSIPNum

  - dimension: invest_product_full_name
    sql: ${TABLE}.InvestProductFullName

  - dimension: invest_product_short_name
    sql: ${TABLE}.InvestProductShortName

  - dimension: product_invest_list_id
    type: int
    sql: ${TABLE}.ProductInvestListID

  - measure: count
    type: count
    drill_fields: [invest_product_carrier_name, invest_product_full_name, invest_product_short_name]

