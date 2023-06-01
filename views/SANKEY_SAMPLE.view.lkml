view: sankey_sample {
  derived_table: {
    sql: select
        *
      from
        (
          values
            ('A', 'X',5),
            (
              'A', 'Y',7
            ),
            ('A', 'Z',6),
            ('B', 'X',2),
            (
              'B', 'Y',9
            ),
            ('B', 'Z',4)
            ) as sankey_sample(first,second,val)
 ;;
  }
  dimension: first {
    type: string
    sql: ${TABLE}.first ;;
  }
  dimension: second {
    type: string
    sql: ${TABLE}.second ;;
  }
  dimension: val {
    type: number
    sql: ${TABLE}.val ;;
  }
  measure: value_measure {
    type: sum
    sql: ${val} ;;
  }
   }
