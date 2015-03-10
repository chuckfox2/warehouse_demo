- view: nscc_file_type
  sql_table_name: NsccFileType
  fields:

  - dimension: associated_firm
    type: int
    sql: ${TABLE}.AssociatedFirm

  - dimension: file_desc
    sql: ${TABLE}.FileDesc

  - dimension: file_prefix
    sql: ${TABLE}.FilePrefix

  - dimension: file_suffix
    sql: ${TABLE}.FileSuffix

  - dimension: file_type
    sql: ${TABLE}.FileType

  - dimension: file_type_id
    type: int
    sql: ${TABLE}.FileTypeId

  - dimension: inbound_prefix
    sql: ${TABLE}.InboundPrefix

  - dimension: inbound_suffix
    sql: ${TABLE}.InboundSuffix

  - dimension: prod_sys_id
    sql: ${TABLE}.ProdSysID

  - dimension: receiving_start
    type: int
    sql: ${TABLE}.ReceivingStart

  - dimension: receiving_tag
    sql: ${TABLE}.ReceivingTag

  - dimension: submitter_code
    sql: ${TABLE}.SubmitterCode

  - dimension: submitting_start
    type: int
    sql: ${TABLE}.SubmittingStart

  - dimension: submitting_tag
    sql: ${TABLE}.SubmittingTag

  - dimension: test_sys_id
    sql: ${TABLE}.TestSysID

  - measure: count
    type: count
    drill_fields: []

