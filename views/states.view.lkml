view: states {
  sql_table_name: `CTP_State_Data.states`
    ;;

  dimension: check_time_et {
    type: string
    sql: ${TABLE}.checkTimeEt ;;
  }

  dimension: commercial_score {
    type: number
    sql: ${TABLE}.commercialScore ;;
  }

  dimension: data_quality_grade {
    type: string
    sql: ${TABLE}.dataQualityGrade ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date ;;
  }

  dimension: date_checked {
    type: string
    sql: ${TABLE}.dateChecked ;;
  }

  dimension: date_modified {
    type: string
    sql: ${TABLE}.dateModified ;;
  }

  measure: death {
    type: number
    sql: ${TABLE}.death ;;
  }

  measure: death_confirmed {
    type: max
    sql: ${TABLE}.deathConfirmed ;;
  }

  measure: death_increase {
    type: max
    sql: ${TABLE}.deathIncrease ;;
  }


  measure: death_probable {
    type: max
    sql: ${TABLE}.deathProbable ;;
  }

  dimension: fips {
    type: number
    sql: ${TABLE}.fips ;;
  }

  dimension: grade {
    type: string
    sql: ${TABLE}.grade ;;
  }

  measure: hospitalized {
    type: number
    sql: ${TABLE}.hospitalized ;;
  }

  measure: hospitalized_cumulative {
    type: max
    sql: ${TABLE}.hospitalizedCumulative ;;
  }

  measure: hospitalized_currently {
    type: max
    sql: ${TABLE}.hospitalizedCurrently ;;
  }

  measure: hospitalized_increase {
    type: max
    sql: ${TABLE}.hospitalizedIncrease ;;
  }

  measure: in_icu_cumulative {
    type: max
    sql: ${TABLE}.inIcuCumulative ;;
  }

  measure: in_icu_currently {
    type: max
    sql: ${TABLE}.inIcuCurrently ;;
  }

  dimension: last_update_et {
    type: string
    sql: ${TABLE}.lastUpdateEt ;;
  }

  measure: negative {
    type: max
    sql: ${TABLE}.negative ;;
  }

  measure: negative_increase {
    type: max
    sql: ${TABLE}.negativeIncrease ;;
  }

  dimension: negative_regular_score {
    type: number
    sql: ${TABLE}.negativeRegularScore ;;
  }

  dimension: negative_score {
    type: number
    sql: ${TABLE}.negativeScore ;;
  }

  measure: negative_tests_viral {
    type: max
    sql: ${TABLE}.negativeTestsViral ;;
  }

  measure: on_ventilator_cumulative {
    type: max
    sql: ${TABLE}.onVentilatorCumulative ;;
  }

  measure: on_ventilator_currently {
    type: max
    sql: ${TABLE}.onVentilatorCurrently ;;
  }

  measure: pending {
    type: max
    sql: ${TABLE}.pending ;;
  }

  measure: pos_neg {
    type: max
    sql: ${TABLE}.posNeg ;;
  }

  measure: positive {
    type: max
    sql: ${TABLE}.positive ;;
  }

  measure: positive_cases_viral {
    type: max
    sql: ${TABLE}.positiveCasesViral ;;
  }

  measure: positive_increase {
    type: max
    sql: ${TABLE}.positiveIncrease ;;
  }

  dimension: positive_score {
    type: number
    sql: ${TABLE}.positiveScore ;;
  }

  measure: positive_tests_viral {
    type: max
    sql: ${TABLE}.positiveTestsViral ;;
  }

  measure: recovered {
    type: max
    sql: ${TABLE}.recovered ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  dimension: state {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.state ;;
  }

  dimension: region {  # Create a dimension called "region"
    case: {            # Define a set of cases and the corresponding labels for those cases

      # When the "state" dimension has a western state, label it "West"
      when: {
        sql: ${state} in ('WA','OR','CA','NV','UT','WY','ID','MT','CO','AK','HI') ;;
        label: "West"
      }

      # When the "state" dimension has a southwestern state, label it "Southwest"
      when: {
        sql: ${state} in ('AZ','NM','TX','OK') ;;
        label: "Southwest"
      }

      # When the "state" dimension has a midwestern state, label it "Midwest"
      when: {
        sql: ${state} in ('ND','SD','MN','IA','WI','MN','OH','IN','MO','NE','KS','MI','IL') ;;
        label: "Midwest"
      }

      # When the "state" dimension has a northeastern state, label it "Northeast"
      when: {
        sql: ${state} in ('MD','DE','NJ','CT','RI','MA','NH','PA','NY','VT','ME','DC') ;;
        label: "Northeast"
      }

      # When the "state" dimension has a southeastern state, label it "Southeast"
      when: {
        sql: ${state} in ('AR','LA','MS','AL','GA','FL','SC','NC','VA','TN','KY','WV') ;;
        label: "Southeast"
      }

      # If none of the above conditions are satisfied, label it "Unknown"
      else: "Unknown"
    }
  }

  measure: total {
    type: max
    sql: ${TABLE}.total ;;
  }

  measure: total_test_results {
    type: max
    sql: ${TABLE}.totalTestResults ;;
  }

  measure: total_test_results_increase {
    type: max
    sql: ${TABLE}.totalTestResultsIncrease ;;
  }

  measure: total_tests_viral {
    type: max
    sql: ${TABLE}.totalTestsViral ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
