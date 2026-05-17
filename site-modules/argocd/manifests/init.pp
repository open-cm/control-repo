class argocd {
  notice('Applying class argocd...')
  notify { 'not_1_argocd': message => 'Notify 1 for argocd' }
  notify { 'not_2_argocd': message => 'Notify 2 for argocd' }
  notify { 'not_3_argocd': message => 'Notify 3 for argocd' }
  notify { 'not_4_argocd': message => 'Notify 4 for argocd' }
  notify { 'not_5_argocd': message => 'Notify 5 for argocd' }
  file { '/tmp/file_1_argocd.txt': ensure => file, content => 'File 1 for argocd\n' }
  file { '/tmp/file_2_argocd.txt': ensure => file, content => 'File 2 for argocd\n' }
  file { '/tmp/file_3_argocd.txt': ensure => file, content => 'File 3 for argocd\n' }
  file { '/tmp/file_4_argocd.txt': ensure => file, content => 'File 4 for argocd\n' }
  file { '/tmp/file_5_argocd.txt': ensure => file, content => 'File 5 for argocd\n' }
}
