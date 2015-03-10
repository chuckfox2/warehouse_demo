- view: oli_lu_sourceoffunds
  sql_table_name: OLI_LU_SOURCEOFFUNDS
  fields:

  - dimension: source_of_funds_desc
    sql: ${TABLE}.SourceOfFundsDesc

  - dimension: source_of_funds_tc
    type: int
    sql: ${TABLE}.SourceOfFundsTC

  - measure: count
    type: count
    drill_fields: []

