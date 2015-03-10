- view: annuity_rider
  sql_table_name: AnnuityRider
  fields:

  - dimension: adm_trans_guid
    sql: ${TABLE}.AdmTransGUID

  - dimension: feature_name
    sql: ${TABLE}.FeatureName

  - dimension: order_id
    sql: ${TABLE}.OrderID

  - dimension: rider_code
    sql: ${TABLE}.RiderCode

  - dimension: rider_desc
    sql: ${TABLE}.RiderDesc

  - dimension: rider_seq
    type: int
    sql: ${TABLE}.RiderSeq

  - dimension: rider_sub_type
    type: int
    sql: ${TABLE}.RiderSubType

  - dimension: rider_type
    type: int
    sql: ${TABLE}.RiderType

  - dimension: sequence
    type: int
    sql: ${TABLE}.Sequence

  - dimension: short_name
    sql: ${TABLE}.ShortName

  - measure: count
    type: count
    drill_fields: [feature_name, short_name]

