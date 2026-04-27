class openobserve::ingester {
  include openobserve

  notice('Configuring OpenObserve Ingester role')

  file { '/etc/openobserve/role.env':
    ensure  => file,
    content => "ZO_NODE_ROLE=ingester\n",
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require => File['/etc/openobserve'],
  }

  notice('OpenObserve Ingester configuration applied.')
}
