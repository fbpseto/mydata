view: training {
  sql_table_name: mydb.training ;;

  dimension: id {
    label: "ID"
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: date {
    label: "日付"
    type: time
    timeframes: [
      date,
      week,
      month,
      year
    ]
    sql: ${TABLE}.date ;;
  }

  dimension: training_id {
    label: "トレーニングID"
    type: number
    sql: ${TABLE}.training_id ;;
  }

  dimension: numberoftimes {
    label: "回数"
    type: number
    sql: ${TABLE}.numberoftimes ;;
  }

  dimension: times {
    label: "時間（分）"
    type: number
    sql: ${TABLE}.times ;;
  }

  dimension: distance {
    label: "距離"
    type: number
    sql: ${TABLE}.distance ;;
  }

  measure: m_numberoftimes {
    label: "回数"
    type: number
    sql: ${TABLE}.numberoftimes ;;
  }

  measure: m_times {
    label: "時間（分）"
    type: number
    sql: ${TABLE}.times ;;
  }

  measure: m_distance {
    label: "距離"
    type: number
    sql: ${TABLE}.distance ;;
  }

  measure: sum_numberoftimes {
    label: "合計回数"
    type: sum
    sql: ${TABLE}.numberoftimes ;;
  }

  measure: sum_times {
    label: "合計時間"
    type: sum
    sql: ${TABLE}.times ;;
  }

  measure: sum_distance {
    label: "総距離"
    type: sum
    sql: ${TABLE}.distance ;;
  }


}
