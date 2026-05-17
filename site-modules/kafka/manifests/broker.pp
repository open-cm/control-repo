class kafka::broker {
  include kafka
  notice('Applying class kafka::broker...')
  notify { 'not_1_kafka_broker': message => 'Notify 1 for kafka::broker' }
  notify { 'not_2_kafka_broker': message => 'Notify 2 for kafka::broker' }
  notify { 'not_3_kafka_broker': message => 'Notify 3 for kafka::broker' }
  notify { 'not_4_kafka_broker': message => 'Notify 4 for kafka::broker' }
  notify { 'not_5_kafka_broker': message => 'Notify 5 for kafka::broker' }
  file { '/tmp/file_1_kafka_broker.txt': ensure => file, content => 'File 1 for kafka::broker\n' }
  file { '/tmp/file_2_kafka_broker.txt': ensure => file, content => 'File 2 for kafka::broker\n' }
  file { '/tmp/file_3_kafka_broker.txt': ensure => file, content => 'File 3 for kafka::broker\n' }
  file { '/tmp/file_4_kafka_broker.txt': ensure => file, content => 'File 4 for kafka::broker\n' }
  file { '/tmp/file_5_kafka_broker.txt': ensure => file, content => 'File 5 for kafka::broker\n' }
}
