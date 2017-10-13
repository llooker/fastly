- dashboard: fastly_overview
  title: Fastly Overview
  layout: newspaper
  elements:
  - name: Activity by Datacenter
    title: Activity by Datacenter
    model: fastly_logs
    explore: fastly_logs
    type: looker_pie
    fields:
    - fastly_logs.count
    - fastly_logs.server_datacenter
    sorts:
    - fastly_logs.count desc
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labPer
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    inner_radius: 40
    listen:
      Request Date: fastly_logs.time_start_ts_date
      Data Center: fastly_logs.server_datacenter
      Geo Region: fastly_logs.geo_region
      Geo Country: fastly_logs.geo_country_code
    row: 3
    col: 16
    width: 8
    height: 6
  - name: Activity by Geo Region
    title: Activity by Geo Region
    model: fastly_logs
    explore: fastly_logs
    type: looker_pie
    fields:
    - fastly_logs.geo_region
    - fastly_logs.count
    sorts:
    - fastly_logs.count desc
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labPer
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    inner_radius: 40
    listen:
      Request Date: fastly_logs.time_start_ts_date
      Data Center: fastly_logs.server_datacenter
      Geo Region: fastly_logs.geo_region
      Geo Country: fastly_logs.geo_country_code
    row: 3
    col: 8
    width: 8
    height: 6
  - name: Failed Request by Data Center
    title: Failed Request by Data Center
    model: fastly_logs
    explore: fastly_logs
    type: looker_pie
    fields:
    - fastly_logs.count
    - fastly_logs.server_datacenter
    filters:
      fastly_logs.is_failed_request: 'Yes'
    sorts:
    - fastly_logs.count desc
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labPer
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    inner_radius: 40
    listen:
      Request Date: fastly_logs.time_start_ts_date
      Data Center: fastly_logs.server_datacenter
      Geo Region: fastly_logs.geo_region
      Geo Country: fastly_logs.geo_country_code
    row: 18
    col: 16
    width: 8
    height: 6
  - name: Failed Request by Geo Region
    title: Failed Request by Geo Region
    model: fastly_logs
    explore: fastly_logs
    type: looker_pie
    fields:
    - fastly_logs.geo_region
    - fastly_logs.count
    filters:
      fastly_logs.is_failed_request: 'Yes'
    sorts:
    - fastly_logs.count desc
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labPer
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    inner_radius: 40
    listen:
      Request Date: fastly_logs.time_start_ts_date
      Data Center: fastly_logs.server_datacenter
      Geo Region: fastly_logs.geo_region
      Geo Country: fastly_logs.geo_country_code
    row: 18
    col: 8
    width: 8
    height: 6
  - name: Failed Requests by Country
    title: Failed Requests by Country
    model: fastly_logs
    explore: fastly_logs
    type: looker_pie
    fields:
    - fastly_logs.count
    - fastly_logs.geo_country_code
    filters:
      fastly_logs.is_failed_request: 'Yes'
    sorts:
    - fastly_logs.count desc
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labPer
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    inner_radius: 40
    listen:
      Request Date: fastly_logs.time_start_ts_date
      Data Center: fastly_logs.server_datacenter
      Geo Region: fastly_logs.geo_region
      Geo Country: fastly_logs.geo_country_code
    row: 18
    col: 0
    width: 8
    height: 6
  - name: Activity by Country
    title: Activity by Country
    model: fastly_logs
    explore: fastly_logs
    type: looker_pie
    fields:
    - fastly_logs.count
    - fastly_logs.geo_country_code
    sorts:
    - fastly_logs.count desc
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labPer
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    inner_radius: 40
    listen:
      Request Date: fastly_logs.time_start_ts_date
      Data Center: fastly_logs.server_datacenter
      Geo Region: fastly_logs.geo_region
      Geo Country: fastly_logs.geo_country_code
    row: 3
    col: 0
    width: 8
    height: 6
  - name: Activity by Country Map
    title: Activity by Country Map
    model: fastly_logs
    explore: fastly_logs
    type: looker_map
    fields:
    - fastly_logs.geo_country_code
    - fastly_logs.count
    filters:
      fastly_logs.server_datacenter: ''
      fastly_logs.geo_region: ''
      fastly_logs.geo_country_code: ''
    sorts:
    - fastly_logs.count desc
    limit: 500
    column_limit: 50
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.8
    show_region_field: true
    draw_map_labels_above_data: false
    map_tile_provider: positron
    map_position: custom
    map_scale_indicator: imperial
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: true
    reverse_map_value_colors: false
    barColors:
    - red
    - blue
    labelSize: 10pt
    map: usa
    map_projection: ''
    quantize_colors: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    map_latitude: 30.14512718337613
    map_longitude: 2.6367187500000004
    map_zoom: 2
    map_value_scale_clamp_max: 15000
    listen:
      Request Date: fastly_logs.time_start_ts_date
      Data Center: fastly_logs.server_datacenter
      Geo Region: fastly_logs.geo_region
      Geo Country: fastly_logs.geo_country_code
    row: 9
    col: 0
    width: 12
    height: 9
  - name: Daily Log Entries
    title: Daily Log Entries
    model: fastly_logs
    explore: fastly_logs
    type: looker_area
    fields:
    - fastly_logs.time_end_ts_date
    - fastly_logs.count
    fill_fields:
    - fastly_logs.time_end_ts_date
    sorts:
    - fastly_logs.time_end_ts_date desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_types: {}
    series_labels:
      fastly_logs.count: Log Entries
    x_axis_label: Date
    y_axes:
    - label: Log Entries
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fastly_logs.count
        name: Log Entries
    reference_lines:
    - reference_type: line
      line_value: mean
      range_start: max
      range_end: min
      margin_top: deviation
      margin_value: mean
      margin_bottom: deviation
      label_position: right
      color: "#000000"
      label: Average
    listen:
      Request Date: fastly_logs.time_start_ts_date
      Data Center: fastly_logs.server_datacenter
      Geo Region: fastly_logs.geo_region
      Geo Country: fastly_logs.geo_country_code
    row: 9
    col: 12
    width: 12
    height: 9
  - name: Most Active Clients
    title: Most Active Clients
    model: fastly_logs
    explore: fastly_logs
    type: looker_column
    fields:
    - fastly_logs.client_as_name
    - fastly_logs.count
    - fastly_logs.server_datacenter
    pivots:
    - fastly_logs.server_datacenter
    filters:
      fastly_logs.client_as_name: "-fastly"
    sorts:
    - fastly_logs.count desc 24
    - fastly_logs.server_datacenter 0
    limit: 10
    column_limit: 50
    row_total: right
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    listen:
      Request Date: fastly_logs.time_start_ts_date
      Data Center: fastly_logs.server_datacenter
      Geo Region: fastly_logs.geo_region
      Geo Country: fastly_logs.geo_country_code
    row: 32
    col: 0
    width: 24
    height: 7
  - name: Data Center Activity by Hour
    title: Data Center Activity by Hour
    model: fastly_logs
    explore: fastly_logs
    type: looker_area
    fields:
    - fastly_logs.server_datacenter
    - fastly_logs.count
    - fastly_logs.time_start_ts_hour_of_day
    pivots:
    - fastly_logs.server_datacenter
    fill_fields:
    - fastly_logs.time_start_ts_hour_of_day
    sorts:
    - fastly_logs.count desc 0
    - fastly_logs.time_start_ts_hour_of_day
    - fastly_logs.server_datacenter
    limit: 500
    column_limit: 50
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Request Date: fastly_logs.time_start_ts_date
      Data Center: fastly_logs.server_datacenter
      Geo Region: fastly_logs.geo_region
      Geo Country: fastly_logs.geo_country_code
    row: 39
    col: 0
    width: 24
    height: 7
  - name: Average Request Size
    title: Average Request Size
    model: fastly_logs
    explore: fastly_logs
    type: single_value
    fields:
    - fastly_logs.average_request_size
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Request Date: fastly_logs.time_start_ts_date
      Data Center: fastly_logs.server_datacenter
      Geo Region: fastly_logs.geo_region
      Geo Country: fastly_logs.geo_country_code
    row: 0
    col: 4
    width: 4
    height: 3
  - name: Distinct Client IPs
    title: Distinct Client IPs
    model: fastly_logs
    explore: fastly_logs
    type: single_value
    fields:
    - fastly_logs.distinct_client_ips
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Request Date: fastly_logs.time_start_ts_date
      Data Center: fastly_logs.server_datacenter
      Geo Region: fastly_logs.geo_region
      Geo Country: fastly_logs.geo_country_code
    row: 0
    col: 8
    width: 4
    height: 3
  - name: Distinct Client Names
    title: Distinct Client Names
    model: fastly_logs
    explore: fastly_logs
    type: single_value
    fields:
    - fastly_logs.total_distinct_client_names
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Request Date: fastly_logs.time_start_ts_date
      Data Center: fastly_logs.server_datacenter
      Geo Region: fastly_logs.geo_region
      Geo Country: fastly_logs.geo_country_code
    row: 0
    col: 12
    width: 4
    height: 3
  - name: Most Popular URL
    title: Most Popular URL
    model: fastly_logs
    explore: fastly_logs
    type: single_value
    fields:
    - fastly_logs.url
    - fastly_logs.count
    filters:
      fastly_logs.url: "-/"
    sorts:
    - fastly_logs.count desc
    limit: 1
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields:
    - fastly_logs.count
    listen:
      Request Date: fastly_logs.time_start_ts_date
      Data Center: fastly_logs.server_datacenter
      Geo Region: fastly_logs.geo_region
      Geo Country: fastly_logs.geo_country_code
    row: 0
    col: 20
    width: 4
    height: 3
  - name: text_1
    type: text
    body_text: <img src="http://fastly.github.io/Soft-Landing/images/fastly-logo-1200x630.png"
      width="85%" height="85%"/>
    row: 0
    col: 0
    width: 4
    height: 3
  - name: Error Rate
    title: Error Rate
    model: fastly_logs
    explore: fastly_logs
    type: single_value
    fields:
    - fastly_logs.error_rate
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Request Date: fastly_logs.time_start_ts_date
      Data Center: fastly_logs.server_datacenter
      Geo Region: fastly_logs.geo_region
      Geo Country: fastly_logs.geo_country_code
    row: 0
    col: 16
    width: 4
    height: 3
  - name: Error Code Breakdown
    title: Error Code Breakdown
    model: fastly_logs
    explore: fastly_logs
    type: looker_bar
    fields:
    - fastly_logs.status
    - fastly_logs.count
    filters:
      fastly_logs.is_failed_request: 'Yes'
    sorts:
    - fastly_logs.status
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Request Date: fastly_logs.time_start_ts_date
      Data Center: fastly_logs.server_datacenter
      Geo Region: fastly_logs.geo_region
      Geo Country: fastly_logs.geo_country_code
    row: 24
    col: 0
    width: 12
    height: 8
  - name: Daily Failed Requests
    title: Daily Failed Requests
    model: fastly_logs
    explore: fastly_logs
    type: looker_line
    fields:
    - fastly_logs.time_start_ts_date
    - fastly_logs.count_failed_requests
    - fastly_logs.count
    fill_fields:
    - fastly_logs.time_start_ts_date
    sorts:
    - fastly_logs.time_start_ts_date desc
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      fastly_logs.count: area
    hidden_series: []
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fastly_logs.count
        name: Fastly Logs
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fastly_logs.count_failed_requests
        name: Count Failed Requests
    listen:
      Request Date: fastly_logs.time_start_ts_date
      Data Center: fastly_logs.server_datacenter
      Geo Region: fastly_logs.geo_region
      Geo Country: fastly_logs.geo_country_code
    row: 24
    col: 12
    width: 12
    height: 8
  filters:
  - name: Request Date
    title: Request Date
    type: field_filter
    default_value: 7 days
    model: fastly_logs
    explore: fastly_logs
    field: fastly_logs.time_start_ts_date
    listens_to_filters: []
    allow_multiple_values: true
    required: false
  - name: Data Center
    title: Data Center
    type: field_filter
    default_value: ''
    model: fastly_logs
    explore: fastly_logs
    field: fastly_logs.server_datacenter
    listens_to_filters: []
    allow_multiple_values: true
    required: false
  - name: Geo Region
    title: Geo Region
    type: field_filter
    default_value: ''
    model: fastly_logs
    explore: fastly_logs
    field: fastly_logs.geo_region
    listens_to_filters: []
    allow_multiple_values: true
    required: false
  - name: Geo Country
    title: Geo Country
    type: field_filter
    default_value: ''
    model: fastly_logs
    explore: fastly_logs
    field: fastly_logs.geo_country_code
    listens_to_filters: []
    allow_multiple_values: true
    required: false
