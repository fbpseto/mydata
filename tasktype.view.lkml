view: tasktype {
  sql_table_name: mydb.tasktype ;;

  dimension: id {
    label: "ID"
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: tasktype_id {
    label: "タスクID"
  　type: number
    sql: ${TABLE}.tasktype_id ;;
  }

  dimension: tasuktype_name {
    label: "タスク名"
    type: string
    sql: ${TABLE}.tasktype_name ;;
  }





}
