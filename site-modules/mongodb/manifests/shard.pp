class mongodb::shard {
  include mongodb
  notice('Applying class mongodb::shard...')
  notify { 'not_1_mongodb_shard': message => 'Notify 1 for mongodb::shard' }
  notify { 'not_2_mongodb_shard': message => 'Notify 2 for mongodb::shard' }
  notify { 'not_3_mongodb_shard': message => 'Notify 3 for mongodb::shard' }
  notify { 'not_4_mongodb_shard': message => 'Notify 4 for mongodb::shard' }
  notify { 'not_5_mongodb_shard': message => 'Notify 5 for mongodb::shard' }
  file { '/tmp/file_1_mongodb_shard.txt': ensure => file, content => 'File 1 for mongodb::shard\n' }
  file { '/tmp/file_2_mongodb_shard.txt': ensure => file, content => 'File 2 for mongodb::shard\n' }
  file { '/tmp/file_3_mongodb_shard.txt': ensure => file, content => 'File 3 for mongodb::shard\n' }
  file { '/tmp/file_4_mongodb_shard.txt': ensure => file, content => 'File 4 for mongodb::shard\n' }
  file { '/tmp/file_5_mongodb_shard.txt': ensure => file, content => 'File 5 for mongodb::shard\n' }
}
