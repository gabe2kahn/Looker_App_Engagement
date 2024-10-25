view: user_screen_views {
  sql_table_name: "APP_ENGAGEMENT"."USER_SCREEN_VIEWS" ;;

  dimension: app_build {
    type: string
    sql: ${TABLE}."APP_BUILD" ;;
  }
  dimension: device_manufacturer {
    type: string
    sql: ${TABLE}."DEVICE_MANUFACTURER" ;;
  }
  dimension: device_model {
    type: string
    sql: ${TABLE}."DEVICE_MODEL" ;;
  }
  dimension_group: last_update_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_UPDATE_TS" ;;
  }
  dimension: os {
    type: string
    sql: ${TABLE}."OS" ;;
  }
  dimension: os_version {
    type: string
    sql: ${TABLE}."OS_VERSION" ;;
  }
  dimension: screen_name {
    type: string
    sql: ${TABLE}."SCREEN_NAME" ;;
  }
  dimension: screen_type {
    type: string
    sql: ${TABLE}."SCREEN_TYPE" ;;
  }
  dimension: screen_view_id {
    type: string
    primary_key: yes
    sql: ${TABLE}."SCREEN_VIEW_ID" ;;
  }
  dimension_group: screen_view_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."SCREEN_VIEW_TS" AS TIMESTAMP_NTZ) ;;
  }
  dimension: session_id {
    type: string
    sql: ${TABLE}."SESSION_ID" ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}."USER_ID" ;;
  }
  measure: total_sessions {
    type: count_distinct
    sql: ${session_id};;
  }
}
