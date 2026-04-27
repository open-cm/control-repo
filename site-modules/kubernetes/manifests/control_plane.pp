class kubernetes::control_plane {
  include kubernetes

  notice("Configuring Kubernetes Control Plane on ${facts['networking']['fqdn']}")

  file { '/etc/kubernetes/control_plane.yaml':
    ensure  => file,
    content => "# Control Plane specific configuration\nrole: master\napi_server_enabled: true\n",
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    require => File['/etc/kubernetes'],
  }

  notice('Kubernetes Control Plane configuration applied successfully.')
}
