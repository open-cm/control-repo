class openobserve::querier {
  include openobserve

  notice('Configuring OpenObserve Querier role')

  file { '/etc/openobserve/role.env':
    ensure  => file,
    content => "ZO_NODE_ROLE=querier\n",
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require => File['/etc/openobserve'],
  }

  notice('OpenObserve Querier configuration applied.')
}
