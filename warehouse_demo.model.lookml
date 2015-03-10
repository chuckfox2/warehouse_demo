- connection: warehouse_demo

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: adm_lu_investstrategy

- explore: adm_lu_purchdate

- explore: adm_lu_transstage

- explore: annuity_agent

- explore: annuity_annuitant

- explore: annuity_arrangement

- explore: annuity_audit

- explore: annuity_esignature

- explore: annuity_extension

- explore: annuity_funding

- explore: annuity_new_order
  joins:
    - join: customer
      foreign_key: customer_id


- explore: annuity_new_order_staging
  joins:
    - join: customer
      foreign_key: customer_id


- explore: annuity_order
  joins:
    - join: customer
      foreign_key: customer_id


- explore: annuity_order_staging
  joins:
    - join: customer
      foreign_key: customer_id


- explore: annuity_order_test
  joins:
    - join: customer
      foreign_key: customer_id


- explore: annuity_owner

- explore: annuity_owner_staging

- explore: annuity_referrer

- explore: annuity_referrer_staging

- explore: annuity_rider

- explore: annuity_rider_staging

- explore: annuity_sub_account_staging

- explore: annuity_subaccount

- explore: app_sub_reject_code

- explore: customer

- explore: customer_app_sub_reject_detail

- explore: customer_app_sub_reject_file
  joins:
    - join: customer
      foreign_key: customer_id


- explore: customer_dtccmember_code
  joins:
    - join: customer
      foreign_key: customer_id


- explore: customer_file_header
  joins:
    - join: customer
      foreign_key: customer_id


- explore: customer_file_type
  joins:
    - join: customer
      foreign_key: customer_id


- explore: customer_invoice
  joins:
    - join: customer
      foreign_key: customer_id


- explore: customer_ledger
  joins:
    - join: customer
      foreign_key: customer_id


- explore: customer_license
  joins:
    - join: customer
      foreign_key: customer_id


- explore: customer_project_fee
  joins:
    - join: customer
      foreign_key: customer_id


- explore: customer_transaction_fee
  joins:
    - join: customer
      foreign_key: customer_id


- explore: customer_transaction_mapping
  joins:
    - join: customer
      foreign_key: customer_id


- explore: dtccmc

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

