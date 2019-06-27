view: worktime {
  sql_table_name: mydb.worktime ;;

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
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension:starttime {
    label: "始業時間"
    type:date_time
    sql: ${TABLE}.start ;;
  }

  dimension:endtime {
    label: "就業時間"
    type:date_time
    sql: ${TABLE}.end ;;
  }

  dimension: worktime {
    label: "勤務時間"
    type: number
    sql: (${TABLE}.end - ${TABLE}.start)/10000 - 1;;
  }

  measure: sum {
    label: "合計稼働時間"
    type: sum
    sql: (${TABLE}.end - ${TABLE}.start)/10000 - 1;;
  }

}
