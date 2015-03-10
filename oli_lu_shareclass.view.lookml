- view: oli_lu_shareclass
  sql_table_name: OLI_LU_SHARECLASS
  fields:

  - dimension: share_class
    type: int
    sql: ${TABLE}.ShareClass

  - dimension: share_class_desc
    sql: ${TABLE}.ShareClassDesc

  - measure: count
    type: count
    drill_fields: []

