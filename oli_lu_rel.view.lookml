- view: oli_lu_rel
  sql_table_name: OLI_LU_REL
  fields:

  - dimension: relation_role_code
    type: int
    sql: ${TABLE}.RelationRoleCode

  - dimension: relation_role_desc
    sql: ${TABLE}.RelationRoleDesc

  - measure: count
    type: count
    drill_fields: []

