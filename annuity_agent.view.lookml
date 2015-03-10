- view: annuity_agent
  sql_table_name: AnnuityAgent
  fields:

  - dimension: adm_trans_guid
    sql: ${TABLE}.AdmTransGUID

  - dimension: agent_addr_line1
    sql: ${TABLE}.AgentAddrLine1

  - dimension: agent_addr_line2
    sql: ${TABLE}.AgentAddrLine2

  - dimension: agent_city
    sql: ${TABLE}.AgentCity

  - dimension: agent_full_name
    sql: ${TABLE}.AgentFullName

  - dimension: agent_id
    sql: ${TABLE}.AgentID

  - dimension: agent_state_code
    type: int
    sql: ${TABLE}.AgentStateCode

  - dimension: agent_work_fax
    sql: ${TABLE}.AgentWorkFax

  - dimension: agent_work_phone
    sql: ${TABLE}.AgentWorkPhone

  - dimension: agent_zip_code
    sql: ${TABLE}.AgentZipCode

  - dimension: order_id
    sql: ${TABLE}.OrderID

  - measure: count
    type: count
    drill_fields: [agent_full_name]

