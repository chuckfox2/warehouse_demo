- view: annuity_annuitant
  sql_table_name: AnnuityAnnuitant
  fields:

  - dimension: address_state_tc
    type: int
    sql: ${TABLE}.AddressStateTC

  - dimension: adm_trans_guid
    sql: ${TABLE}.AdmTransGUID

  - dimension: age
    type: int
    sql: ${TABLE}.Age

  - dimension: area_code
    sql: ${TABLE}.AreaCode

  - dimension_group: birth
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.BirthDate

  - dimension: city
    sql: ${TABLE}.City

  - dimension: dial_number
    sql: ${TABLE}.DialNumber

  - dimension: first_name
    sql: ${TABLE}.FirstName

  - dimension: full_name
    sql: ${TABLE}.FullName

  - dimension: gender
    type: int
    sql: ${TABLE}.Gender

  - dimension: govt_id
    sql: ${TABLE}.GovtID

  - dimension: last_name
    sql: ${TABLE}.LastName

  - dimension: line1
    sql: ${TABLE}.Line1

  - dimension: line2
    sql: ${TABLE}.Line2

  - dimension: middle_name
    sql: ${TABLE}.MiddleName

  - dimension: order_id
    sql: ${TABLE}.OrderID

  - dimension: relation_role_code
    type: int
    sql: ${TABLE}.RelationRoleCode

  - dimension: residence_state
    type: int
    sql: ${TABLE}.ResidenceState

  - dimension: zip
    sql: ${TABLE}.Zip

  - measure: count
    type: count
    drill_fields: [full_name, first_name, middle_name, last_name]

