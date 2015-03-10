- view: idm_lu_bankholiday
  sql_table_name: IDM_LU_BANKHOLIDAY
  fields:

  - dimension: day_observed
    sql: ${TABLE}.DayObserved

  - dimension_group: holiday
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.HolidayDate

  - dimension: holiday_name
    sql: ${TABLE}.HolidayName

  - measure: count
    type: count
    drill_fields: [holiday_name]

