- view: customer_transaction_mapping
  sql_table_name: CustomerTransactionMapping
  fields:

  - dimension: carrier_abbr_name
    sql: ${TABLE}.CarrierAbbrName

  - dimension: carrier_dba
    sql: ${TABLE}.CarrierDBA

  - dimension: carrier_full_name
    sql: ${TABLE}.CarrierFullName

  - dimension: carrier_org_code
    sql: ${TABLE}.CarrierOrgCode

  - dimension: customer_id
    type: int
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: dtccmember_code
    type: int
    sql: ${TABLE}.DTCCMemberCode

  - measure: count
    type: count
    drill_fields: [carrier_abbr_name, carrier_full_name, customer.customer_id, customer.customer_name, customer.customer_short_name]

