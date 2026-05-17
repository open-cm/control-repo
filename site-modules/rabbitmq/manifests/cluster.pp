class rabbitmq::cluster {
  include rabbitmq
  notice('Applying class rabbitmq::cluster...')
  notify { 'not_1_rabbitmq_cluster': message => 'Notify 1 for rabbitmq::cluster' }
  notify { 'not_2_rabbitmq_cluster': message => 'Notify 2 for rabbitmq::cluster' }
  notify { 'not_3_rabbitmq_cluster': message => 'Notify 3 for rabbitmq::cluster' }
  notify { 'not_4_rabbitmq_cluster': message => 'Notify 4 for rabbitmq::cluster' }
  notify { 'not_5_rabbitmq_cluster': message => 'Notify 5 for rabbitmq::cluster' }
  file { '/tmp/file_1_rabbitmq_cluster.txt': ensure => file, content => 'File 1 for rabbitmq::cluster\n' }
  file { '/tmp/file_2_rabbitmq_cluster.txt': ensure => file, content => 'File 2 for rabbitmq::cluster\n' }
  file { '/tmp/file_3_rabbitmq_cluster.txt': ensure => file, content => 'File 3 for rabbitmq::cluster\n' }
  file { '/tmp/file_4_rabbitmq_cluster.txt': ensure => file, content => 'File 4 for rabbitmq::cluster\n' }
  file { '/tmp/file_5_rabbitmq_cluster.txt': ensure => file, content => 'File 5 for rabbitmq::cluster\n' }
}
