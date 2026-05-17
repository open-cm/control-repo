class argocd::controller {
  include argocd
  notice('Applying class argocd::controller...')
  notify { 'not_1_argocd_controller': message => 'Notify 1 for argocd::controller' }
  notify { 'not_2_argocd_controller': message => 'Notify 2 for argocd::controller' }
  notify { 'not_3_argocd_controller': message => 'Notify 3 for argocd::controller' }
  notify { 'not_4_argocd_controller': message => 'Notify 4 for argocd::controller' }
  notify { 'not_5_argocd_controller': message => 'Notify 5 for argocd::controller' }
  file { '/tmp/file_1_argocd_controller.txt': ensure => file, content => 'File 1 for argocd::controller\n' }
  file { '/tmp/file_2_argocd_controller.txt': ensure => file, content => 'File 2 for argocd::controller\n' }
  file { '/tmp/file_3_argocd_controller.txt': ensure => file, content => 'File 3 for argocd::controller\n' }
  file { '/tmp/file_4_argocd_controller.txt': ensure => file, content => 'File 4 for argocd::controller\n' }
  file { '/tmp/file_5_argocd_controller.txt': ensure => file, content => 'File 5 for argocd::controller\n' }
}
