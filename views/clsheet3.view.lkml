# The name of this view in Looker is "Clsheet3"
view: clsheet3 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "MODELLED"."CLSHEET3" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " Airbyte Ab ID" in Explore.

  dimension: _airbyte_ab_id {
    type: string
    sql: ${TABLE}."_AIRBYTE_AB_ID" ;;
  }

  dimension: _airbyte_clsheet3_hashid {
    type: string
    sql: ${TABLE}."_AIRBYTE_CLSHEET3_HASHID" ;;
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

  measure: msa_cpc_avg {
    type: average
    sql: ${TABLE}."MSA CPC Avg" ;;
  }

  dimension: msa_name {
    type: string
    map_layer_name: us_counties_fips
    sql: ${TABLE}."MSA Name" ;;
  }
  measure: count {
    type: count
    drill_fields: [msa_name]
  }
}