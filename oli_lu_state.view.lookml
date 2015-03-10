- view: oli_lu_state
  sql_table_name: OLI_LU_STATE
  fields:

  - dimension: sales_region
    sql: ${TABLE}.SalesRegion

  - dimension: state_abbr
    sql: ${TABLE}.StateAbbr

  - dimension: state_code
    type: int
    sql: ${TABLE}.StateCode

  - dimension: state_name
    sql: ${TABLE}.StateName

  - measure: count
    type: count
    drill_fields: [state_name]

