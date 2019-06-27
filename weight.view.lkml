view: weight {
  sql_table_name: mydb.weight ;;

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

  dimension: weight {
    label: "体重"
    type: number
    sql: ${TABLE}.weight ;;
  }

  dimension: bmi {
    label: "BMI"
    type: number
    sql: ${TABLE}.bmi ;;
  }

  measure: m_weight {
    label: "体重"
    type: number
    sql: ${TABLE}.weight ;;
  }

  measure: m_bmi {
    label: "BMI"
    type: number
    sql: ${TABLE}.bmi ;;
  }



}
