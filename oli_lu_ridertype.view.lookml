- view: oli_lu_ridertype
  sql_table_name: OLI_LU_RIDERTYPE
  fields:

  - dimension: rider_desc
    sql: ${TABLE}.RiderDesc

  - dimension: rider_type
    type: int
    sql: ${TABLE}.RiderType

  - measure: count
    type: count
    drill_fields: []

