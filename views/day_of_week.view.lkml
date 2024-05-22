# The name of this view in Looker is "Day of Week"
view: day_of_week {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.day_of_week ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Day" in Explore.

  dimension: day {
    type: string
    sql: ${TABLE}.day ;;
  }
  measure: count {
    type: count
  }
}
