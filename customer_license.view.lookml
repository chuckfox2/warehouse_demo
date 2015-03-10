- view: customer_license
  sql_table_name: CustomerLicense
  fields:

  - dimension: customer_id
    type: int
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: license_amount
    type: number
    sql: ${TABLE}.LicenseAmount

  - dimension_group: license_end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LicenseEndDate

  - dimension: license_notes
    sql: ${TABLE}.LicenseNotes

  - dimension_group: license_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LicenseStartDate

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
    drill_fields: [customer.customer_id, customer.customer_name, customer.customer_short_name]

