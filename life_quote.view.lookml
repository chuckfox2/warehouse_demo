- view: life_quote
  sql_table_name: LifeQuote
  fields:

  - dimension: agent_name
    sql: ${TABLE}.AgentName

  - dimension: carrier_abbr_name
    sql: ${TABLE}.CarrierAbbrName

  - dimension: carrier_code
    sql: ${TABLE}.CarrierCode

  - dimension: carrier_name
    sql: ${TABLE}.CarrierName

  - dimension: carrier_org_code
    sql: ${TABLE}.CarrierOrgCode

  - dimension_group: create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CreateDate

  - dimension: customer_id
    type: int
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: distributor_org_code
    sql: ${TABLE}.DistributorOrgCode

  - dimension: face_amt
    type: number
    sql: ${TABLE}.FaceAmt

  - dimension: insured_name
    sql: ${TABLE}.InsuredName

  - dimension: jurisdiction
    type: int
    sql: ${TABLE}.Jurisdiction

  - dimension: payment_amt
    type: number
    sql: ${TABLE}.PaymentAmt

  - dimension: payment_method
    type: int
    sql: ${TABLE}.PaymentMethod

  - dimension: payment_mode
    type: int
    sql: ${TABLE}.PaymentMode

  - dimension: plan_name
    sql: ${TABLE}.PlanName

  - dimension: product_code
    sql: ${TABLE}.ProductCode

  - dimension: product_type
    type: int
    sql: ${TABLE}.ProductType

  - dimension_group: quote
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.QuoteDate

  - dimension: stage_code
    type: int
    sql: ${TABLE}.StageCode

  - dimension_group: stage
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.StageDate

  - dimension: trans_identifier
    sql: ${TABLE}.TransIdentifier

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - carrier_abbr_name
    - carrier_name
    - insured_name
    - agent_name
    - plan_name
    - customer.customer_id
    - customer.customer_name
    - customer.customer_short_name

