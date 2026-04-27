class kubernetes {
  notice('Initializing Kubernetes module...')

  file { '/etc/kubernetes':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

  file { '/etc/kubernetes/config.yaml':
    ensure  => file,
    content => "# Kubernetes global config\ncluster_name: puppet_test_cluster\n",
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require => File['/etc/kubernetes'],
  }

  notice('Kubernetes base configuration applied.')
}
