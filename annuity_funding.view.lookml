- view: annuity_funding
  sql_table_name: AnnuityFunding
  fields:

  - dimension: adm_trans_guid
    sql: ${TABLE}.AdmTransGUID

  - dimension: commissiont_amt
    type: number
    sql: ${TABLE}.CommissiontAmt

  - dimension: death_benefit_amt
    type: number
    sql: ${TABLE}.DeathBenefitAmt

  - dimension: fund_ref_no
    sql: ${TABLE}.FundRefNo

  - dimension: fund_seq
    type: int
    sql: ${TABLE}.FundSeq

  - dimension: fund_type
    type: int
    sql: ${TABLE}.FundType

  - dimension: invest_amt
    type: number
    sql: ${TABLE}.InvestAmt

  - dimension: living_benefit_rider_existed
    sql: ${TABLE}.LivingBenefitRiderExisted

  - dimension: loss_of_death_benefit
    type: number
    sql: ${TABLE}.LossOfDeathBenefit

  - dimension: order_id
    sql: ${TABLE}.OrderID

  - dimension: original_purchase_date_code
    type: int
    sql: ${TABLE}.OriginalPurchaseDateCode

  - dimension: payment_form
    type: int
    sql: ${TABLE}.PaymentForm

  - dimension: surr_carrier_name
    sql: ${TABLE}.SurrCarrierName

  - dimension: surr_plan_name
    sql: ${TABLE}.SurrPlanName

  - dimension_group: surr_pol_eff
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.SurrPolEffDate

  - dimension: surr_produt_type_code
    type: int
    sql: ${TABLE}.SurrProdutTypeCode

  - dimension: surrender_charge
    type: number
    sql: ${TABLE}.SurrenderCharge

  - dimension: surrender_charge_prospectus
    type: number
    sql: ${TABLE}.SurrenderChargeProspectus

  - measure: count
    type: count
    drill_fields: [surr_carrier_name, surr_plan_name]

