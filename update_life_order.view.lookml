- view: update_life_order
  sql_table_name: UpdateLifeOrder
  fields:

  - dimension: agent_id
    sql: ${TABLE}.AgentID

  - dimension: trans_identifier
    sql: ${TABLE}.TransIdentifier

  - measure: count
    type: count
    drill_fields: []

