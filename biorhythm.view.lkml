view: biorhythm {
  sql_table_name: mydb.biorhythm ;;

  dimension: id {
    label: "ID"
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: date {
    label: "日付"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: mental {
    label: "精神"
    type: number
    sql: ${TABLE}.mental ;;
  }

  dimension: physical {
    label: "身体"
    type: number
    sql: ${TABLE}.physical ;;
  }

  dimension: sleep {
    label: "睡眠時間"
    type: number
    sql: ${TABLE}.sleep ;;
  }

  dimension: temperature {
    label: "気温"
    type: number
    sql: ${TABLE}.temperature ;;
  }

  dimension: wheather {
    label: "天気"
    type: string
    sql: ${TABLE}.wheather ;;
  }


  measure: m_physical {
    label: "身体"
    type: number
    sql: ${TABLE}.physical ;;
  }

  measure: m_mental {
    label: "精神"
    type: number
    sql: ${TABLE}.mental ;;
  }

  measure: m_temperature {
    label: "気温"
    type: number
    sql: ${TABLE}.temperature ;;
  }

　measure: m_sleep {
　  label: "睡眠時間"
  　type: number
    sql: ${TABLE}.sleep;;
　}

  measure: count {
    type: count
    drill_fields: [id]
  }
}
