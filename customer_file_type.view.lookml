- view: customer_file_type
  sql_table_name: CustomerFileType
  fields:

  - dimension: customer_id
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: file_type
    sql: ${TABLE}.FileType

  - dimension: route_header_only
    sql: ${TABLE}.RouteHeaderOnly

  - measure: count
    type: count
    drill_fields: [customer.customer_id, customer.customer_name, customer.customer_short_name]

