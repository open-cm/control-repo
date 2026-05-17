class minio::server {
  include minio
  notice('Applying class minio::server...')
  notify { 'not_1_minio_server': message => 'Notify 1 for minio::server' }
  notify { 'not_2_minio_server': message => 'Notify 2 for minio::server' }
  notify { 'not_3_minio_server': message => 'Notify 3 for minio::server' }
  notify { 'not_4_minio_server': message => 'Notify 4 for minio::server' }
  file { '/tmp/file_1_minio_server.txt': ensure => file, content => 'File 1 for minio::server\n' }
  file { '/tmp/file_2_minio_server.txt': ensure => file, content => 'File 2 for minio::server\n' }
  file { '/tmp/file_3_minio_server.txt': ensure => file, content => 'File 3 for minio::server\n' }
  file { '/nonexistent_minio_server_dir/fail.txt': ensure => file, content => 'Fail File for minio::server\n' }
  exec { 'fail_exec_minio_server': command => '/usr/bin/nonexistent-cmd-minio_server', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-minio_server': ensure => installed }
}
