view: waf_logs {
  sql_table_name: looker_test.waf_logs ;;

  dimension: accept_encoding {
    type: string
    sql: ${TABLE}.accept_encoding ;;
  }

  dimension: anomaly_score {
    type: number
    sql: ${TABLE}.anomaly_score ;;
  }

  dimension: blocked {
    type: number
    sql: ${TABLE}.blocked ;;
  }

  dimension: datacenter {
    type: string
    sql: ${TABLE}.datacenter ;;
  }

  dimension: executed {
    type: number
    sql: ${TABLE}.executed ;;
  }

  dimension: failures {
    type: number
    sql: ${TABLE}.failures ;;
  }

  dimension: fastly_client_ip {
    type: string
    sql: ${TABLE}.fastly_client_ip ;;
  }

  dimension: fastly_info_state {
    type: string
    sql: ${TABLE}.fastly_info_state ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }

  dimension: http_score {
    type: number
    sql: ${TABLE}.http_score ;;
  }

  dimension: lfi_score {
    type: number
    sql: ${TABLE}.lfi_score ;;
  }

  dimension: logdata {
    type: string
    sql: ${TABLE}.logdata ;;
  }

  dimension: logged {
    type: number
    sql: ${TABLE}.logged ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: passed {
    type: number
    sql: ${TABLE}.passed ;;
  }

  dimension: php_score {
    type: number
    sql: ${TABLE}.php_score ;;
  }

  dimension: rce_score {
    type: number
    sql: ${TABLE}.rce_score ;;
  }

  dimension: req_request {
    type: string
    sql: ${TABLE}.req_request ;;
  }

  dimension: req_url {
    type: string
    sql: ${TABLE}.req_url ;;
  }

  dimension: req_user_agent {
    type: string
    sql: ${TABLE}.req_user_agent ;;
  }

  dimension: rfi_score {
    type: number
    sql: ${TABLE}.rfi_score ;;
  }

  dimension: rule_id {
    type: number
    sql: ${TABLE}.rule_id ;;
  }

  dimension: service_id {
    type: string
    sql: ${TABLE}.service_id ;;
  }

  dimension: session_score {
    type: number
    sql: ${TABLE}.session_score ;;
  }

  dimension: severity {
    type: number
    sql: ${TABLE}.severity ;;
  }

  dimension: sql_score {
    type: number
    sql: ${TABLE}.sql_score ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: timestamp {
    type: string
    sql: ${TABLE}.timestamp ;;
    hidden: yes
  }

  dimension_group: time_breakdown {
    type: time
    datatype: epoch
    sql: ${timestamp} ;;
    timeframes: [raw, time, date, week, month, hour_of_day]
  }

  dimension: x_request_id {
    type: string
    sql: ${TABLE}.x_request_id ;;
  }

  dimension: xss_score {
    type: number
    sql: ${TABLE}.xss_score ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: distinct_ip {
    type: count_distinct
    sql: ${fastly_client_ip} ;;
    drill_fields: [fastly_client_ip]
  }

  measure: count_ip {
    type: count_distinct
    sql: ${fastly_client_ip} ;;
    drill_fields: [fastly_client_ip]
  }

  dimension: logged_condition  {
    type:  yesno
    sql: (${logged} = 1 and ${blocked} = 0) or (${passed} = 1 and ${anomaly_score} > 0)  ;;
  }

  measure: logged_count {
    type:  count
    filters: {
      field:  logged_condition
      value: "yes"
    }

  }

  dimension: passed_condition  {
    type: yesno
    sql: ${passed} = 1 and (${logged} = 0 and ${blocked}= 0) ;;
  }

  measure: passed_count {
    type:  count
    filters: {
      field:  passed_condition
      value: "yes"
    }
  }


  measure: blocked_count {
    type:  count
    filters: {
      field:  blocked
      value: "1"
    }
  }

  measure: failure_count {
    type:  count
    filters: {
      field:  failures
      value: "1"
    }
  }

  dimension: rule_message {
    sql: concat(cast(${rule_id} as string),' - ',${message}) ;;
  }

  dimension: logdata_decode {
    sql: cast(from_base64(${logdata}) as string) ;;
  }

}
