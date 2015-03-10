- view: idm_lu_licensetype
  sql_table_name: IDM_LU_LICENSETYPE
  fields:

  - dimension: license_amount
    type: number
    sql: ${TABLE}.LicenseAmount

  - dimension: license_description
    sql: ${TABLE}.LicenseDescription

  - dimension: license_type
    type: int
    sql: ${TABLE}.LicenseType

  - dimension: updated_by
    sql: ${TABLE}.UpdatedBy

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.UpdatedOn

  - measure: count
    type: count
    drill_fields: []

