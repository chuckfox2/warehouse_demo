- view: vw_data_dictionary
  sql_table_name: vw_DataDictionary
  fields:

  - dimension: allow_nulls
    sql: ${TABLE}.AllowNulls

  - dimension: colum_name
    sql: ${TABLE}.ColumName

  - dimension: column_description
    sql: ${TABLE}.ColumnDescription

  - dimension_group: create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CreateDate

  - dimension: data_type
    sql: ${TABLE}.DataType

  - dimension: fkey_reference
    sql: ${TABLE}.FKeyReference

  - dimension: is_foreign_key
    type: int
    sql: ${TABLE}.IsForeignKey

  - dimension: is_primary_key
    type: int
    sql: ${TABLE}.IsPrimaryKey

  - dimension: table_name
    sql: ${TABLE}.TableName

  - measure: count
    type: count
    drill_fields: [table_name, colum_name]

