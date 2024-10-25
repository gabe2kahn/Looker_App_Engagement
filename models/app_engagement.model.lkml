connection: "snowflake_product"

include: "/views/*.view"

datagroup: app_engagement_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: app_engagement_default_datagroup

label: "Arro App Engagement Monitoring"
