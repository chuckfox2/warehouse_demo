- view: oli_lu_polprod
  sql_table_name: OLI_LU_POLPROD
  fields:

  - dimension: product_desc
    sql: ${TABLE}.ProductDesc

  - dimension: product_type
    type: int
    sql: ${TABLE}.ProductType

  - measure: count
    type: count
    drill_fields: []

