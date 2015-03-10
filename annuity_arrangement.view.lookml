- view: annuity_arrangement
  sql_table_name: AnnuityArrangement
  fields:

  - dimension: adm_trans_guid
    sql: ${TABLE}.AdmTransGUID

  - dimension: arr_desc
    sql: ${TABLE}.ArrDesc

  - dimension: arr_mode
    type: int
    sql: ${TABLE}.ArrMode

  - dimension: arr_seq
    type: int
    sql: ${TABLE}.ArrSeq

  - dimension: arr_sub_type
    type: int
    sql: ${TABLE}.ArrSubType

  - dimension: arr_type
    type: int
    sql: ${TABLE}.ArrType

  - dimension: feature_name
    sql: ${TABLE}.FeatureName

  - dimension: modal_amt
    type: number
    sql: ${TABLE}.ModalAmt

  - dimension: order_id
    sql: ${TABLE}.OrderID

  - dimension: plan_name
    sql: ${TABLE}.PlanName

  - dimension: product_code
    sql: ${TABLE}.ProductCode

  - dimension: sequence
    type: int
    sql: ${TABLE}.Sequence

  - measure: count
    type: count
    drill_fields: [feature_name, plan_name]

