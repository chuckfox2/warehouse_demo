- view: industry_stats
  sql_table_name: IndustryStats
  fields:

  - dimension: company_name
    sql: ${TABLE}.CompanyName

  - dimension: customer_id
    type: int
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: product_type
    sql: ${TABLE}.ProductType

  - dimension: report_year
    type: int
    sql: ${TABLE}.ReportYear

  - dimension: total_value
    type: number
    sql: ${TABLE}.TotalValue

  - measure: count
    type: count
    drill_fields: [company_name, customer.customer_id, customer.customer_name, customer.customer_short_name]

