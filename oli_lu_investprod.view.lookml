- view: oli_lu_investprod
  sql_table_name: OLI_LU_INVESTPROD
  fields:

  - dimension: invest_product_desc
    sql: ${TABLE}.InvestProductDesc

  - dimension: invest_product_type
    type: int
    sql: ${TABLE}.InvestProductType

  - measure: count
    type: count
    drill_fields: []

