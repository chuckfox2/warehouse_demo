- view: order_list
  sql_table_name: OrderList
  fields:

  - dimension: order_id
    sql: ${TABLE}.OrderID

  - measure: count
    type: count
    drill_fields: []

