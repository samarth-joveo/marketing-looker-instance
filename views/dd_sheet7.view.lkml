# The name of this view in Looker is "Dd Sheet7"
view: dd_sheet7 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "MODELLED"."DD_SHEET7" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " Airbyte Ab ID" in Explore.

  dimension: _airbyte_ab_id {
    type: string
    sql: ${TABLE}."_AIRBYTE_AB_ID" ;;
  }

  dimension: _airbyte_dd_sheet7_hashid {
    type: string
    sql: ${TABLE}."_AIRBYTE_DD_SHEET7_HASHID" ;;
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

  dimension: hires_ {
    type: string
    sql: ${TABLE}."Hires " ;;
  }

  dimension: hiringposting_ratio {
    type: string
    sql: ${TABLE}."Hiring/posting ratio" ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}."MONTH" ;;
  }

  dimension: unique_posts {
    type: string
    sql: ${TABLE}."Unique posts" ;;
  }
  measure: count {
    type: count
  }
}
