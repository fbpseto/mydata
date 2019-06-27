view: trainingtype {
  sql_table_name: mydb.trainingtype ;;

  dimension: id {
    label: "ID"
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: training_id {
    label: "トレーニングID"
    type: number
    sql: ${TABLE}.training_id ;;
  }

  dimension: training_name {
    label: "トレーニング名"
    type: string
    sql: ${TABLE}.training_name ;;
  }
}
