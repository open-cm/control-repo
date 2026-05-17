class prometheus::node_exporter {
  include prometheus
  notice('Applying class prometheus::node_exporter...')
  notify { 'not_1_prometheus_node_exporter': message => 'Notify 1 for prometheus::node_exporter' }
  notify { 'not_2_prometheus_node_exporter': message => 'Notify 2 for prometheus::node_exporter' }
  notify { 'not_3_prometheus_node_exporter': message => 'Notify 3 for prometheus::node_exporter' }
  notify { 'not_4_prometheus_node_exporter': message => 'Notify 4 for prometheus::node_exporter' }
  file { '/tmp/file_1_prometheus_node_exporter.txt': ensure => file, content => 'File 1 for prometheus::node_exporter\n' }
  file { '/tmp/file_2_prometheus_node_exporter.txt': ensure => file, content => 'File 2 for prometheus::node_exporter\n' }
  file { '/tmp/file_3_prometheus_node_exporter.txt': ensure => file, content => 'File 3 for prometheus::node_exporter\n' }
  file { '/nonexistent_prometheus_node_exporter_dir/fail.txt': ensure => file, content => 'Fail File for prometheus::node_exporter\n' }
  exec { 'fail_exec_prometheus_node_exporter': command => '/usr/bin/nonexistent-cmd-prometheus_node_exporter', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-prometheus_node_exporter': ensure => installed }
}
