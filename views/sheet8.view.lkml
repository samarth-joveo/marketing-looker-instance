# The name of this view in Looker is "Sheet8"
view: sheet8 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "MODELLED"."SHEET8" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " Above National" in Explore.

  dimension: _above_national {
    type: string
    sql: ${TABLE}."% above national" ;;
  }

  dimension: _airbyte_ab_id {
    type: string
    sql: ${TABLE}."_AIRBYTE_AB_ID" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _airbyte_emitted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."_AIRBYTE_EMITTED_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: _airbyte_normalized {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."_AIRBYTE_NORMALIZED_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: _airbyte_sheet8_hashid {
    type: string
    sql: ${TABLE}."_AIRBYTE_SHEET8_HASHID" ;;
  }

  dimension: job_postingstotal_employment {
    type: string
    sql: ${TABLE}."Job postings/total employment" ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}."LOCATION" ;;
  }

  dimension: total_employment {
    type: string
    sql: ${TABLE}."Total employment" ;;
  }

  dimension: unique_job_postings {
    type: string
    sql: ${TABLE}."Unique job postings" ;;
  }
  measure: count {
    type: count
  }
}
