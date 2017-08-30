view: fastly_logs {
  sql_table_name: looker_test.fastly_logs ;;

  dimension: cache_status {
    type: string
    sql: ${TABLE}.cache_status ;;
  }

  dimension: client_as_name {
    type: string
    sql: ${TABLE}.client_as_name ;;
  }

# Added by Bruce Sandell - Looker
# Number of distinct client names
  measure: total_distinct_client_names {
    type: count_distinct
    sql: ${client_as_name} ;;
  }

  dimension: client_as_number {
    type: string
    sql: ${TABLE}.client_as_number ;;
  }

  dimension: client_connection_speed {
    type: string
    sql: ${TABLE}.client_connection_speed ;;
  }

  dimension: client_ip {
    type: string
    sql: ${TABLE}.client_ip ;;
  }

# Added by Bruce Sandell - Looker
# Number of distinct client IP addreses
  measure: distinct_client_ips {
    type:  count_distinct
    sql: ${client_ip} ;;
  }

  dimension: content_type {
    type: string
    sql: ${TABLE}.content_type ;;
  }

# Added by Bruce Sandell - Looker
# Indicator for failed equests
  dimension: is_failed_request {
    type:  yesno
    sql: ${status} != 200 ;;
  }

  dimension: geo_city {
    type: string
    sql: ${TABLE}.geo_city ;;
  }

  dimension: geo_continent_code {
    type: string
    sql: ${TABLE}.geo_continent_code ;;
  }

# Added map layer so Looker automatically knows how to map these values
  dimension: geo_country_code {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.geo_country_code ;;
  }

  dimension: geo_region {
    type: string
    sql: ${TABLE}.geo_region ;;
  }

  dimension: h2_stream_id {
    type: string
    sql: ${TABLE}.h2_stream_id ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }

  dimension: is_cacheable {
    type: yesno
    sql: ${TABLE}.is_cacheable ;;
  }

  dimension: is_h2 {
    type: yesno
    sql: ${TABLE}.is_h2 ;;
  }

  dimension: is_h2_push {
    type: yesno
    sql: ${TABLE}.is_h2_push ;;
  }

  dimension: is_ipv6 {
    type: yesno
    sql: ${TABLE}.is_ipv6 ;;
  }

  dimension: is_tls {
    type: yesno
    sql: ${TABLE}.is_tls ;;
  }

  dimension: origin_host {
    type: string
    sql: ${TABLE}.origin_host ;;
  }

  dimension: protocol {
    type: string
    sql: ${TABLE}.protocol ;;
  }

  dimension: req_body_size {
    type: number
    sql: ${TABLE}.req_body_size ;;
  }

  dimension: req_header_size {
    type: number
    sql: ${TABLE}.req_header_size ;;
  }

# Added by Bruce Sandell - Looker
# Calculate total request size
  dimension: req_size {
    type: number
    sql: ${req_header_size} + ${req_body_size} ;;
  }

  measure: average_request_size {
    type: average
    sql:  ${req_size} ;;
    value_format_name: decimal_0
  }

  dimension: request {
    type: string
    sql: ${TABLE}.request ;;
  }

  dimension: request_accept_charset {
    type: string
    sql: ${TABLE}.request_accept_charset ;;
  }

  dimension: request_accept_content {
    type: string
    sql: ${TABLE}.request_accept_content ;;
  }

  dimension: request_accept_encoding {
    type: string
    sql: ${TABLE}.request_accept_encoding ;;
  }

  dimension: request_accept_language {
    type: string
    sql: ${TABLE}.request_accept_language ;;
  }

  dimension: request_cache_control {
    type: string
    sql: ${TABLE}.request_cache_control ;;
  }

  dimension: request_connection {
    type: string
    sql: ${TABLE}.request_connection ;;
  }

  dimension: request_dnt {
    type: string
    sql: ${TABLE}.request_dnt ;;
  }

  dimension: request_forwarded {
    type: string
    sql: ${TABLE}.request_forwarded ;;
  }

  dimension: request_referer {
    type: string
    sql: ${TABLE}.request_referer ;;
  }

  dimension: request_user_agent {
    type: string
    sql: ${TABLE}.request_user_agent ;;
  }

  dimension: request_via {
    type: string
    sql: ${TABLE}.request_via ;;
  }

  dimension: request_x_att_device_id {
    type: string
    sql: ${TABLE}.request_x_att_device_id ;;
  }

  dimension: request_x_forwarded_for {
    type: string
    sql: ${TABLE}.request_x_forwarded_for ;;
  }

  dimension: request_x_requested_with {
    type: string
    sql: ${TABLE}.request_x_requested_with ;;
  }

  dimension: resp_body_size {
    type: number
    sql: ${TABLE}.resp_body_size ;;
  }

  dimension: resp_header_size {
    type: number
    sql: ${TABLE}.resp_header_size ;;
  }

# Added by Bruce Sandell - Looker
# Calculate total response size
  dimension: response_size {
    type: number
    sql: ${resp_header_size} + ${resp_body_size} ;;
  }

  dimension: response_age {
    type: string
    sql: ${TABLE}.response_age ;;
  }

  dimension: response_cache_control {
    type: string
    sql: ${TABLE}.response_cache_control ;;
  }

  dimension: response_expires {
    type: string
    sql: ${TABLE}.response_expires ;;
  }

  dimension: response_last_modified {
    type: string
    sql: ${TABLE}.response_last_modified ;;
  }

  dimension: response_tsv {
    type: string
    sql: ${TABLE}.response_tsv ;;
  }

  dimension: server_datacenter {
    type: string
    sql: ${TABLE}.server_datacenter ;;
  }

  dimension: server_ip {
    type: string
    sql: ${TABLE}.server_ip ;;
  }

  dimension: service_id {
    type: string
    sql: ${TABLE}.service_id ;;
  }

  dimension: socket_cwnd {
    type: number
    sql: ${TABLE}.socket_cwnd ;;
  }

  dimension: socket_nexthop {
    type: string
    sql: ${TABLE}.socket_nexthop ;;
  }

  dimension: socket_ploss {
    type: number
    sql: ${TABLE}.socket_ploss ;;
  }

  dimension: socket_tcpi_delta_retrans {
    type: number
    sql: ${TABLE}.socket_tcpi_delta_retrans ;;
  }

  dimension: socket_tcpi_last_data_sent {
    type: number
    sql: ${TABLE}.socket_tcpi_last_data_sent ;;
  }

  dimension: socket_tcpi_rcv_mss {
    type: number
    sql: ${TABLE}.socket_tcpi_rcv_mss ;;
  }

  dimension: socket_tcpi_rcv_rtt {
    type: number
    sql: ${TABLE}.socket_tcpi_rcv_rtt ;;
  }

  dimension: socket_tcpi_rcv_space {
    type: number
    sql: ${TABLE}.socket_tcpi_rcv_space ;;
  }

  dimension: socket_tcpi_rtt {
    type: number
    sql: ${TABLE}.socket_tcpi_rtt ;;
  }

  dimension: socket_tcpi_rttvar {
    type: number
    sql: ${TABLE}.socket_tcpi_rttvar ;;
  }

  dimension: socket_tcpi_snd_mss {
    type: number
    sql: ${TABLE}.socket_tcpi_snd_mss ;;
  }

  dimension: socket_tcpi_total_retrans {
    type: number
    sql: ${TABLE}.socket_tcpi_total_retrans ;;
  }

  dimension: status {
    type: string
    sql: cast( ${TABLE}.status as INT64);;
  }

  dimension: time_elapsed {
    type: number
    sql: ${TABLE}.time_elapsed ;;
  }

# Added by Bruce Sandell - Looker
# Calculate total time elapsed
  measure: total_time_elapsed {
    type: sum
    sql: ${time_elapsed} ;;
  }

# Added by Bruce Sandell - Looker
# Calculate average time elapsed
  measure: average_time_elapsed {
    type: average
    sql: ${time_elapsed} ;;
  }

  dimension: time_end {
    type: string
    sql: ${TABLE}.time_end ;;
  }

# Added by Bruce Sandell - Looker
# Convert the string date to a
  dimension_group: time_end_ts {
    type: time
    sql: PARSE_TIMESTAMP('%FT%TGMT',  ${time_end}) ;;
    datatype: timestamp
    timeframes: [raw, time, date, week, month, hour_of_day]
  }

  dimension: time_start {
    type: string
    sql: ${TABLE}.time_start ;;
  }

# Added by Bruce Sandell - Looker
# Convert the string date to a
  dimension_group: time_start_ts {
    type: time
    sql: PARSE_TIMESTAMP('%FT%TGMT',  ${time_start}) ;;
    datatype: timestamp
    timeframes: [raw, time, date, week, month, hour_of_day]
  }

  dimension: tls_client_cipher {
    type: string
    sql: ${TABLE}.tls_client_cipher ;;
  }

  dimension: tls_client_cipher_sha {
    type: string
    sql: ${TABLE}.tls_client_cipher_sha ;;
  }

  dimension: tls_client_protocol {
    type: string
    sql: ${TABLE}.tls_client_protocol ;;
  }

  dimension: tls_client_servername {
    type: string
    sql: ${TABLE}.tls_client_servername ;;
  }

  dimension: tls_client_tlsexts_sha {
    type: string
    sql: ${TABLE}.tls_client_tlsexts_sha ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
#    approximate_threshold: 100000
    drill_fields: [tls_client_servername, client_as_name]
  }

  measure: count_failed_requests {
    type: count
    filters: {
      field: is_failed_request
      value: "Yes"
    }
  }

  measure: error_rate {
    description: "Number of failed requests / Number of total requests"
    sql: ${count_failed_requests}/(CASE WHEN ${count} = 0 THEN NULL ELSE ${count} END);;
    type: number
    value_format_name: percent_1
  }
}
