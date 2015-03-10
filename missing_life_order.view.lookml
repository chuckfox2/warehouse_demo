- view: missing_life_order
  sql_table_name: MissingLifeOrder
  fields:

  - dimension: originator_sub_code
    sql: ${TABLE}.OriginatorSubCode

  - dimension_group: stage
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.StageDate

  - dimension: test_ind
    sql: ${TABLE}.TestInd

  - dimension: trans_identifier
    sql: ${TABLE}.TransIdentifier

  - measure: count
    type: count
    drill_fields: []

