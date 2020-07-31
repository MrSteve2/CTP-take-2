connection: "ctp-state-data"

# include all the views
include: "/views/**/*.view"

datagroup: ctp_take2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ctp_take2_default_datagroup

explore: states {}

explore: city_data{}
