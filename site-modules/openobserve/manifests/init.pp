class openobserve {
  notice('Setting up OpenObserve...')

  file { '/etc/openobserve':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

  file { '/etc/openobserve/common.env':
    ensure  => file,
    content => "ZO_DATA_DIR=/var/lib/openobserve\nZO_HTTP_PORT=5080\n",
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require => File['/etc/openobserve'],
  }
}
