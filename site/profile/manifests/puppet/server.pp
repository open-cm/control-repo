# Profile for the primary Puppet server (and compilers)
class profile::puppet::server (
  Boolean $is_primary = true,
  String  $enc_type   = 'rust',
) {
  # Common settings for all servers
  ini_setting { 'puppet_storeconfigs':
    ensure  => present,
    path    => '/etc/puppetlabs/puppet/puppet.conf',
    section => 'master',
    setting => 'storeconfigs',
    value   => 'true',
  }

  ini_setting { 'puppet_storeconfigs_backend':
    ensure  => present,
    path    => '/etc/puppetlabs/puppet/puppet.conf',
    section => 'master',
    setting => 'storeconfigs_backend',
    value   => 'puppetdb',
  }

  ini_setting { 'puppet_reports':
    ensure  => present,
    path    => '/etc/puppetlabs/puppet/puppet.conf',
    section => 'master',
    setting => 'reports',
    value   => 'puppetdb',
  }

  # Setup ENC
  file { '/etc/puppetlabs/puppet/scripts':
    ensure => directory,
    owner  => 'puppet',
    group  => 'puppet',
    mode   => '0755',
  }

  $enc_file = $enc_type ? {
    'rust'  => '/etc/puppetlabs/puppet/scripts/enc',
    default => '/etc/puppetlabs/puppet/scripts/enc.py',
  }

  ini_setting { 'puppet_node_terminus':
    ensure  => present,
    path    => '/etc/puppetlabs/puppet/puppet.conf',
    section => 'server',
    setting => 'node_terminus',
    value   => 'exec',
  }

  ini_setting { 'puppet_external_nodes':
    ensure  => present,
    path    => '/etc/puppetlabs/puppet/puppet.conf',
    section => 'server',
    setting => 'external_nodes',
    value   => $enc_file,
  }

  if $is_primary {
    notify { 'Configuring primary Puppet Server': }
  } else {
    notify { 'Configuring Compiler Server': }
  }
}
