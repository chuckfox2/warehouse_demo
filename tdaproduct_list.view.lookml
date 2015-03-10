- view: tdaproduct_list
  sql_table_name: TDAProductList
  fields:

  - dimension: adm_trans_guid
    sql: ${TABLE}.AdmTransGUID

  - dimension: adm_trans_stage
    type: int
    sql: ${TABLE}.AdmTransStage

  - dimension: carrier_code
    sql: ${TABLE}.CarrierCode

  - dimension: carrier_name
    sql: ${TABLE}.CarrierName

  - dimension: cusipnum
    sql: ${TABLE}.CUSIPNum

  - dimension_group: import
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ImportDate

  - dimension: plan_name
    sql: ${TABLE}.PlanName

  - dimension: product_code
    sql: ${TABLE}.ProductCode

  - dimension: product_list_id
    type: int
    sql: ${TABLE}.ProductListID

  - dimension: product_type_code
    type: int
    sql: ${TABLE}.ProductTypeCode

  - dimension: product_type_desc
    sql: ${TABLE}.ProductTypeDesc

  - dimension_group: stage
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.StageDate

  - dimension: trans_identifier
    sql: ${TABLE}.TransIdentifier

  - measure: count
    type: count
    drill_fields: [carrier_name, plan_name]

