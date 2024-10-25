connection: "snowflake_product"

include: "/views/*.view"

datagroup: app_engagement_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: app_engagement_default_datagroup

label: "Arro App Engagement Monitoring"

explore: user_screen_views {
  join: user_profile {
    type: inner
    sql_on: ${user_screen_views.user_id} = ${user_profile.user_id} ;;
    relationship: many_to_one
  }
}
