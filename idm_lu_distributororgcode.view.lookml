- view: idm_lu_distributororgcode
  sql_table_name: IDM_LU_DISTRIBUTORORGCODE
  fields:

  - dimension: customer_id
    type: int
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: distributor_name
    sql: ${TABLE}.DistributorName

  - dimension: distributor_org_code
    sql: ${TABLE}.DistributorOrgCode

  - measure: count
    type: count
    drill_fields: [distributor_name, customer.customer_id, customer.customer_name, customer.customer_short_name]

