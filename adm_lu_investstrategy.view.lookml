- view: adm_lu_investstrategy
  sql_table_name: ADM_LU_INVESTSTRATEGY
  fields:

  - dimension: invest_strategy_code
    type: int
    sql: ${TABLE}.InvestStrategyCode

  - dimension: invest_strategy_desc
    sql: ${TABLE}.InvestStrategyDesc

  - measure: count
    type: count
    drill_fields: []

