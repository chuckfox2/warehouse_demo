- view: annuity_referrer_staging
  sql_table_name: AnnuityReferrerStaging
  fields:

  - dimension: adm_trans_guid
    sql: ${TABLE}.AdmTransGUID

  - dimension: first_name
    sql: ${TABLE}.FirstName

  - dimension: full_name
    sql: ${TABLE}.FullName

  - dimension: lastname
    sql: ${TABLE}.Lastname

  - dimension: order_id
    sql: ${TABLE}.OrderID

  - dimension: related_ref_id
    sql: ${TABLE}.RelatedRefID

  - dimension: relation_description
    type: int
    sql: ${TABLE}.RelationDescription

  - dimension: relation_role_code
    type: int
    sql: ${TABLE}.RelationRoleCode

  - measure: count
    type: count
    drill_fields: [full_name, first_name, lastname]

