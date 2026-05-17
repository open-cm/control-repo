class grafana {
  notice('Setting up Grafana...')
  # Intentional failure: try to create a file in a non-existent folder
  file { '/nonexistent_grafana_dir/config.ini':
    ensure  => file,
    content => "grafana_fail\n",
  }
}
