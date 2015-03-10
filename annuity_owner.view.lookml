- view: annuity_owner
  sql_table_name: AnnuityOwner
  fields:

  - dimension: account_designation
    type: int
    sql: ${TABLE}.AccountDesignation

  - dimension: adm_trans_guid
    sql: ${TABLE}.AdmTransGUID

  - dimension_group: birth
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.BirthDate

  - dimension: gender
    type: int
    sql: ${TABLE}.Gender

  - dimension: order_id
    sql: ${TABLE}.OrderID

  - dimension: org_form
    type: int
    sql: ${TABLE}.OrgForm

  - dimension: owner_desc
    sql: ${TABLE}.OwnerDesc

  - dimension: party_type_code
    type: int
    sql: ${TABLE}.PartyTypeCode

  - dimension: residence_state
    type: int
    sql: ${TABLE}.ResidenceState

  - measure: count
    type: count
    drill_fields: []

