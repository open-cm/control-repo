class argocd::server {
  include argocd
  notice('Applying class argocd::server...')
  notify { 'not_1_argocd_server': message => 'Notify 1 for argocd::server' }
  notify { 'not_2_argocd_server': message => 'Notify 2 for argocd::server' }
  notify { 'not_3_argocd_server': message => 'Notify 3 for argocd::server' }
  notify { 'not_4_argocd_server': message => 'Notify 4 for argocd::server' }
  notify { 'not_5_argocd_server': message => 'Notify 5 for argocd::server' }
  file { '/tmp/file_1_argocd_server.txt': ensure => file, content => 'File 1 for argocd::server\n' }
  file { '/tmp/file_2_argocd_server.txt': ensure => file, content => 'File 2 for argocd::server\n' }
  file { '/tmp/file_3_argocd_server.txt': ensure => file, content => 'File 3 for argocd::server\n' }
  file { '/tmp/file_4_argocd_server.txt': ensure => file, content => 'File 4 for argocd::server\n' }
  file { '/tmp/file_5_argocd_server.txt': ensure => file, content => 'File 5 for argocd::server\n' }
}
