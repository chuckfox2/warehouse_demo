- view: annuity_new_order
  sql_table_name: AnnuityNewOrder
  fields:

  - dimension: adm_trans_guid
    sql: ${TABLE}.AdmTransGUID

  - dimension: carrier_abbr_name
    sql: ${TABLE}.CarrierAbbrName

  - dimension: carrier_code
    sql: ${TABLE}.CarrierCode

  - dimension: carrier_dtccmember_code
    type: int
    sql: ${TABLE}.CarrierDTCCMemberCode

  - dimension: carrier_org_code
    sql: ${TABLE}.CarrierOrgCode

  - dimension: commission_amt
    type: number
    sql: ${TABLE}.CommissionAmt

  - dimension_group: create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CreateDate

  - dimension: cusip_num
    sql: ${TABLE}.CusipNum

  - dimension: customer_id
    type: int
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: distributor_client_acct_num
    sql: ${TABLE}.DistributorClientAcctNum

  - dimension: distributor_org_code
    sql: ${TABLE}.DistributorOrgCode

  - dimension: distributor_sub_office_code
    sql: ${TABLE}.DistributorSubOfficeCode

  - dimension: distributor_sub_office_name
    sql: ${TABLE}.DistributorSubOfficeName

  - dimension: experience_risk
    type: int
    sql: ${TABLE}.ExperienceRisk

  - dimension: invest_amt
    type: number
    sql: ${TABLE}.InvestAmt

  - dimension: jurisdiction
    type: int
    sql: ${TABLE}.Jurisdiction

  - dimension: order_id
    sql: ${TABLE}.OrderID

  - dimension: plan_name
    sql: ${TABLE}.PlanName

  - dimension: pol_number
    sql: ${TABLE}.PolNumber

  - dimension: primary_holding_id
    sql: ${TABLE}.PrimaryHoldingID

  - dimension: product_code
    sql: ${TABLE}.ProductCode

  - dimension: product_type_code
    type: int
    sql: ${TABLE}.ProductTypeCode

  - dimension: qual_plan_type
    type: int
    sql: ${TABLE}.QualPlanType

  - dimension: share_class
    type: int
    sql: ${TABLE}.ShareClass

  - dimension_group: sign
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.SignDate

  - dimension: surrender_amount
    type: number
    sql: ${TABLE}.SurrenderAmount

  - dimension_group: trade
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.TradeDate

  - dimension: trans_code
    sql: ${TABLE}.TransCode

  - dimension: trans_type
    sql: ${TABLE}.TransType

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - distributor_sub_office_name
    - carrier_abbr_name
    - plan_name
    - customer.customer_id
    - customer.customer_name
    - customer.customer_short_name

