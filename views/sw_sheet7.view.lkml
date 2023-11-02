# The name of this view in Looker is "Sw Sheet7"
view: sw_sheet7 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "MODELLED"."SW_SHEET7" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " Airbyte Ab ID" in Explore.

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

  dimension: _airbyte_sw_sheet7_hashid {
    type: string
    sql: ${TABLE}."_AIRBYTE_SW_SHEET7_HASHID" ;;
  }

  measure: hires {
    type: sum
    sql: ${TABLE}."HIRES" ;;
  }

  measure: hiringposting_ratio {
    type: average
    sql: ${TABLE}."Hiring/posting ratio" ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}."MONTH" ;;
  }

  measure: unique_posts {
    type: sum
    sql: ${TABLE}."Unique posts" ;;
  }
  measure: count {
    type: count
  }
}
