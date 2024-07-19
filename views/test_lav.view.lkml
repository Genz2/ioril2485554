view: test_lav{
    derived_table: {
      sql:
          SELECT
            users.id AS id,
                (DATE(users.created_at)) AS created_date,
            users.city AS city,
            COUNT(*) AS user_count
          FROM
              users
          {% if test_lav.city._is_filtered %}
            WHERE
              users.city = {{ _filters['test_lav.city'] | sql_quote  }}
          {% endif %}
          GROUP BY
              1,
              2,
              3
          ORDER BY
              2 DESC
            ;;
    }
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }


  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year, second]
    sql: ${TABLE}.created_at ;;
  }

  measure: count {
    type: count
    sql: ${TABLE}.count ;;
  }

    }
