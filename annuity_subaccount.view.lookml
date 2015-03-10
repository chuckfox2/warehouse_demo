- view: annuity_subaccount
  sql_table_name: AnnuitySubaccount
  fields:

  - dimension: adm_trans_guid
    sql: ${TABLE}.AdmTransGUID

  - dimension: assest_class
    type: int
    sql: ${TABLE}.AssestClass

  - dimension: carrier_code
    sql: ${TABLE}.CarrierCode

  - dimension: carrier_name
    sql: ${TABLE}.CarrierName

  - dimension: cusip_num
    sql: ${TABLE}.CusipNum

  - dimension: invest_type
    type: int
    sql: ${TABLE}.InvestType

  - dimension: order_id
    sql: ${TABLE}.OrderID

  - dimension: product_code
    sql: ${TABLE}.ProductCode

  - dimension: product_full_name
    sql: ${TABLE}.ProductFullName

  - dimension: sequence
    type: int
    sql: ${TABLE}.Sequence

  - dimension: sub_account_seq
    type: int
    sql: ${TABLE}.SubAccountSeq

  - dimension: transfer_pct
    type: int
    sql: ${TABLE}.TransferPct

  - measure: count
    type: count
    drill_fields: [product_full_name, carrier_name]

