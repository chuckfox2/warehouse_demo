- view: annuity_extension
  sql_table_name: AnnuityExtension
  fields:

  - dimension: adm_trans_guid
    sql: ${TABLE}.AdmTransGUID

  - dimension: fund_source
    sql: ${TABLE}.FundSource

  - dimension: order_id
    sql: ${TABLE}.OrderID

  - dimension: suitab1_storage
    sql: ${TABLE}.Suitab1Storage

  - measure: count
    type: count
    drill_fields: []

