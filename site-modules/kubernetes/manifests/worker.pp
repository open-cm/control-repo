class kubernetes::worker {
  include kubernetes

  notice("Configuring Kubernetes Worker Node on ${facts['networking']['fqdn']}")

  file { '/etc/kubernetes/worker.yaml':
    ensure  => file,
    content => "# Worker node specific configuration\nrole: node\nkubelet_enabled: true\n",
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require => File['/etc/kubernetes'],
  }

  notice('Kubernetes Worker configuration applied successfully.')
}
