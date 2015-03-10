- view: oli_lu_qualplan
  sql_table_name: OLI_LU_QUALPLAN
  fields:

  - dimension: qual_plan_desc
    sql: ${TABLE}.QualPlanDesc

  - dimension: qual_plan_type
    type: int
    sql: ${TABLE}.QualPlanType

  - measure: count
    type: count
    drill_fields: []

