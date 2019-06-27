view: do_record {
  sql_table_name: mydb.do_record ;;

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
      day_of_month,
      month,
      week,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: tasktype_id {
    label: "タスクタイプID"
    type: number
    sql: ${TABLE}.tasktype_id ;;
  }

  dimension: do_record {
    label: "やったこと"
    type: string
    sql: ${TABLE}.do ;;
  }




}
