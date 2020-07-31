view: city_data {
  sql_table_name: `ctp-data-284402.CTP_State_Data.City_data`
    ;;

  measure: case_fatality_rate {
    type: number
    sql: ${TABLE}.Case_Fatality_Rate ;;
  }

  measure: cases_aian {
    type: number
    sql: ${TABLE}.Cases_AIAN ;;
  }

  measure: cases_asian {
    type: number
    sql: ${TABLE}.Cases_Asian ;;
  }

  measure: cases_black {
    type: number
    sql: ${TABLE}.Cases_Black ;;
  }

  measure: cases_ethnicity_hispanic {
    type: number
    sql: ${TABLE}.Cases_Ethnicity_Hispanic ;;
  }

  measure: cases_ethnicity_non_hispanic {
    type: number
    sql: ${TABLE}.Cases_Ethnicity_NonHispanic ;;
  }

  measure: cases_ethnicity_unknown {
    type: number
    sql: ${TABLE}.Cases_Ethnicity_Unknown ;;
  }

  measure: cases_hnpi {
    type: number
    sql: ${TABLE}.Cases_HNPI ;;
  }

  measure: cases_latin_x {
    type: number
    sql: ${TABLE}.Cases_LatinX ;;
  }

  measure: cases_multiracial {
    type: number
    sql: ${TABLE}.Cases_Multiracial ;;
  }

  measure: cases_other {
    type: number
    sql: ${TABLE}.Cases_Other ;;
  }

  measure: cases_total {
    type: number
    sql: ${TABLE}.Cases_Total ;;
  }

  measure: cases_unknown {
    type: number
    sql: ${TABLE}.Cases_Unknown ;;
  }

  measure: cases_white {
    type: number
    sql: ${TABLE}.Cases_White ;;
  }

  dimension: coding {
    type: string
    sql: ${TABLE}.coding ;;
  }

  measure: daily_new_cases {
    type: number
    sql: ${TABLE}.Daily_New_Cases ;;
  }

  measure: daily_new_deaths {
    type: number
    sql: ${TABLE}.Daily_New_Deaths ;;
  }

  measure: daily_percent_incr_cases {
    type: number
    sql: ${TABLE}.Daily_PercentIncr_Cases ;;
  }

  measure: daily_percent_incr_deaths {
    type: number
    sql: ${TABLE}.Daily_PercentIncr_Deaths ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.DATE ;;
  }

  measure: deaths_aian {
    type: number
    sql: ${TABLE}.Deaths_AIAN ;;
  }

  measure: deaths_asian {
    type: number
    sql: ${TABLE}.Deaths_Asian ;;
  }

  measure: deaths_black {
    type: number
    sql: ${TABLE}.Deaths_Black ;;
  }

  measure: deaths_ethnicity_hispanic {
    type: number
    sql: ${TABLE}.Deaths_Ethnicity_Hispanic ;;
  }

  measure: deaths_ethnicity_non_hispanic {
    type: number
    sql: ${TABLE}.Deaths_Ethnicity_NonHispanic ;;
  }

  measure: deaths_ethnicity_unknown {
    type: number
    sql: ${TABLE}.Deaths_Ethnicity_Unknown ;;
  }

  measure: deaths_hnpi {
    type: number
    sql: ${TABLE}.Deaths_HNPI ;;
  }

  measure: deaths_latin_x {
    type: number
    sql: ${TABLE}.Deaths_LatinX ;;
  }

  measure: deaths_multiracial {
    type: number
    sql: ${TABLE}.Deaths_Multiracial ;;
  }

  measure: deaths_other {
    type: number
    sql: ${TABLE}.Deaths_Other ;;
  }

  measure: deaths_total {
    type: number
    sql: ${TABLE}.Deaths_Total ;;
  }

  measure: deaths_unknown {
    type: number
    sql: ${TABLE}.Deaths_Unknown ;;
  }

  measure: deaths_white {
    type: number
    sql: ${TABLE}.Deaths_White ;;
  }

  dimension: sheet_name {
    type: string
    sql: ${TABLE}.Sheet_Name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: tracking {
    type: string
    sql: ${TABLE}.tracking ;;
  }

  measure: weekly_new_cases {
    type: number
    sql: ${TABLE}.Weekly_New_Cases ;;
  }

  measure: weekly_new_deaths {
    type: number
    sql: ${TABLE}.Weekly_New_Deaths ;;
  }

  measure: weekly_percent_incr_cases {
    type: number
    sql: ${TABLE}.Weekly_PercentIncr_Cases ;;
  }

  measure: weekly_percent_incr_deaths {
    type: number
    sql: ${TABLE}.Weekly_PercentIncr_Deaths ;;
  }

  measure: count {
    type: count
    drill_fields: [sheet_name]
  }
}
