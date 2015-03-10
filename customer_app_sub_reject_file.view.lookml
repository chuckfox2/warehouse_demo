- view: customer_app_sub_reject_file
  sql_table_name: CustomerAppSubRejectFile
  fields:

  - dimension: carrier_dtcc_member_code
    sql: ${TABLE}.CarrierDtccMemberCode

  - dimension: carrier_name
    sql: ${TABLE}.CarrierName

  - dimension: customer_id
    type: int
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: distributor_dtcc_member_code
    sql: ${TABLE}.DistributorDtccMemberCode

  - dimension: distributor_name
    sql: ${TABLE}.DistributorName

  - dimension: line_number
    type: int
    sql: ${TABLE}.LineNumber

  - dimension_group: received
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ReceivedDate

  - dimension: reject_count
    type: int
    sql: ${TABLE}.RejectCount

  - dimension: reject_file_name
    sql: ${TABLE}.RejectFileName

  - dimension: reject_id
    type: int
    sql: ${TABLE}.RejectID

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - reject_file_name
    - distributor_name
    - carrier_name
    - customer.customer_id
    - customer.customer_name
    - customer.customer_short_name

