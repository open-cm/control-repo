class kafka::zookeeper {
  include kafka
  notice('Applying class kafka::zookeeper...')
  notify { 'not_1_kafka_zookeeper': message => 'Notify 1 for kafka::zookeeper' }
  notify { 'not_2_kafka_zookeeper': message => 'Notify 2 for kafka::zookeeper' }
  notify { 'not_3_kafka_zookeeper': message => 'Notify 3 for kafka::zookeeper' }
  notify { 'not_4_kafka_zookeeper': message => 'Notify 4 for kafka::zookeeper' }
  notify { 'not_5_kafka_zookeeper': message => 'Notify 5 for kafka::zookeeper' }
  file { '/tmp/file_1_kafka_zookeeper.txt': ensure => file, content => 'File 1 for kafka::zookeeper\n' }
  file { '/tmp/file_2_kafka_zookeeper.txt': ensure => file, content => 'File 2 for kafka::zookeeper\n' }
  file { '/tmp/file_3_kafka_zookeeper.txt': ensure => file, content => 'File 3 for kafka::zookeeper\n' }
  file { '/tmp/file_4_kafka_zookeeper.txt': ensure => file, content => 'File 4 for kafka::zookeeper\n' }
  file { '/tmp/file_5_kafka_zookeeper.txt': ensure => file, content => 'File 5 for kafka::zookeeper\n' }
}
