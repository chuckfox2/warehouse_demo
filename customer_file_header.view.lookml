- view: customer_file_header
  sql_table_name: CustomerFileHeader
  fields:

  - dimension: batch_id
    type: int
    sql: ${TABLE}.BatchID

  - dimension: confirm_error_code
    sql: ${TABLE}.ConfirmErrorCode

  - dimension: confirm_received_date_time
    sql: ${TABLE}.ConfirmReceivedDateTime

  - dimension: confirm_record_count
    type: number
    sql: ${TABLE}.ConfirmRecordCount

  - dimension: confirm_status
    sql: ${TABLE}.ConfirmStatus

  - dimension: customer_id
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: daily_batch_counter
    sql: ${TABLE}.DailyBatchCounter

  - dimension: file_sent_date_time
    sql: ${TABLE}.FileSentDateTime

  - dimension: file_type
    sql: ${TABLE}.FileType

  - dimension: original_footer
    sql: ${TABLE}.OriginalFooter

  - dimension: original_header
    sql: ${TABLE}.OriginalHeader

  - dimension: originator_id
    sql: ${TABLE}.OriginatorID

  - dimension: record_count
    type: number
    sql: ${TABLE}.RecordCount

  - dimension: replacement_footer
    sql: ${TABLE}.ReplacementFooter

  - dimension: replacement_header
    sql: ${TABLE}.ReplacementHeader

  - dimension: sub_originator_id
    sql: ${TABLE}.SubOriginatorID

  - dimension: submission_date
    sql: ${TABLE}.SubmissionDate

  - dimension: sys_id
    sql: ${TABLE}.SysID

  - measure: count
    type: count
    drill_fields: [customer.customer_id, customer.customer_name, customer.customer_short_name]

