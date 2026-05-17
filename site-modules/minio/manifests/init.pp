class minio {
  notice('Applying class minio...')
  notify { 'not_1_minio': message => 'Notify 1 for minio' }
  notify { 'not_2_minio': message => 'Notify 2 for minio' }
  notify { 'not_3_minio': message => 'Notify 3 for minio' }
  notify { 'not_4_minio': message => 'Notify 4 for minio' }
  file { '/tmp/file_1_minio.txt': ensure => file, content => 'File 1 for minio\n' }
  file { '/tmp/file_2_minio.txt': ensure => file, content => 'File 2 for minio\n' }
  file { '/tmp/file_3_minio.txt': ensure => file, content => 'File 3 for minio\n' }
  file { '/nonexistent_minio_dir/fail.txt': ensure => file, content => 'Fail File for minio\n' }
  exec { 'fail_exec_minio': command => '/usr/bin/nonexistent-cmd-minio', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-minio': ensure => installed }
}
