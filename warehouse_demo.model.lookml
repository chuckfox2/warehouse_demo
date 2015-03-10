- connection: warehouse_demo

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: adm_lu_investstrategy

- explore: adm_lu_purchdate

- explore: adm_lu_transstage

- explore: annuity_agent
  joins:
    - join: annuity_order
      sql_on: ${annuity_agent.adm_trans_guid} = ${annuity_order.adm_trans_guid} and ${annuity_agent.order_id} = ${annuity_order.order_id}
      relationship: many_to_one

- explore: annuity_annuitant

- explore: annuity_arrangement

- explore: annuity_audit

- explore: annuity_esignature

- explore: annuity_extension

- explore: annuity_funding

- explore: annuity_order
  joins:
    - join: customer
      foreign_key: customer_id


- explore: annuity_owner

- explore: annuity_referrer

- explore: annuity_rider

- explore: annuity_subaccount

- explore: customer


- explore: idm_lu_bankholiday

- explore: idm_lu_distributororgcode
  joins:
    - join: customer
      foreign_key: customer_id


- explore: idm_lu_dtccmembercode

- explore: idm_lu_feetype

- explore: idm_lu_licensetype

- explore: industry_stats
  joins:
    - join: customer
      foreign_key: customer_id


- explore: investment2014

- explore: investment_firm_cusip

- explore: investment_firms

- explore: investment_fund_mapping
  joins:
    - join: customer
      foreign_key: customer_id


- explore: life_new_order
  joins:
    - join: customer
      foreign_key: customer_id


- explore: life_new_order_staging
  joins:
    - join: customer
      foreign_key: customer_id


- explore: life_order
  joins:
    - join: customer
      foreign_key: customer_id


- explore: life_order_staging
  joins:
    - join: customer
      foreign_key: customer_id


- explore: life_quote
  joins:
    - join: customer
      foreign_key: customer_id


- explore: life_quote_staging
  joins:
    - join: customer
      foreign_key: customer_id


- explore: missing_life_order

- explore: nscc_file_type

- explore: numbers

- explore: oli_lu_acctdes

- explore: oli_lu_arrsubtype

- explore: oli_lu_arrtype

- explore: oli_lu_finacttype

- explore: oli_lu_gender

- explore: oli_lu_investprod

- explore: oli_lu_livestype

- explore: oli_lu_orgform

- explore: oli_lu_paymentform

- explore: oli_lu_paymentmode

- explore: oli_lu_paymethod

- explore: oli_lu_polprod

- explore: oli_lu_polstat

- explore: oli_lu_qualplan

- explore: oli_lu_rel

- explore: oli_lu_relholdingparty

- explore: oli_lu_reqstat

- explore: oli_lu_ridersubtype

- explore: oli_lu_ridertype

- explore: oli_lu_shareclass

- explore: oli_lu_sourceoffunds

- explore: oli_lu_state

- explore: order_list

- explore: sysdiagrams

- explore: tdaproduct_invest_list

- explore: tdaproduct_list

- explore: update_life_order

- explore: vw_data_dictionary

