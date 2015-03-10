- view: oli_lu_ridersubtype
  sql_table_name: OLI_LU_RIDERSUBTYPE
  fields:

  - dimension: rider_sub_desc
    sql: ${TABLE}.RiderSubDesc

  - dimension: rider_sub_type
    type: int
    sql: ${TABLE}.RiderSubType

  - measure: count
    type: count
    drill_fields: []

