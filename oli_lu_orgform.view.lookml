- view: oli_lu_orgform
  sql_table_name: OLI_LU_ORGFORM
  fields:

  - dimension: org_desc
    sql: ${TABLE}.OrgDesc

  - dimension: org_form
    type: int
    sql: ${TABLE}.OrgForm

  - measure: count
    type: count
    drill_fields: []

