class base::windows {
  include base
  notice('Applying class base::windows...')
  notify { 'not_1_base_windows': message => 'Notify 1 for base::windows' }
  notify { 'not_2_base_windows': message => 'Notify 2 for base::windows' }
  notify { 'not_3_base_windows': message => 'Notify 3 for base::windows' }
  notify { 'not_4_base_windows': message => 'Notify 4 for base::windows' }
  notify { 'not_5_base_windows': message => 'Notify 5 for base::windows' }
  file { '/tmp/file_1_base_windows.txt': ensure => file, content => 'File 1 for base::windows\n' }
  file { '/tmp/file_2_base_windows.txt': ensure => file, content => 'File 2 for base::windows\n' }
  file { '/tmp/file_3_base_windows.txt': ensure => file, content => 'File 3 for base::windows\n' }
  file { '/tmp/file_4_base_windows.txt': ensure => file, content => 'File 4 for base::windows\n' }
  file { '/tmp/file_5_base_windows.txt': ensure => file, content => 'File 5 for base::windows\n' }
}
