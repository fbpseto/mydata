connection: "myconnection"

# include all the views
include: "*.view"

datagroup: mydata_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 minute"
}

persist_with: mydata_default_datagroup

explore: biorhythm {}

explore: tasktype {}

explore: do_record {
  join: tasktype {
    sql_on: ${do_record.tasktype_id}=${tasktype.tasktype_id} ;;
    relationship: many_to_one
  }
}

explore: worktime {}

explore: weight {}

explore: training {
  join: trainingtype {
    sql_on: ${training.training_id} = ${trainingtype.training_id};;
    relationship: many_to_one
  }
}
