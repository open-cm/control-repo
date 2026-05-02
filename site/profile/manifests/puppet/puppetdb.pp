# Profile for PuppetDB
class profile::puppet::puppetdb (
  Integer $max_threads = 400,
) {
  notify { 'Configuring PuppetDB': }
  
  # Configure Jetty max threads for high parallelism
  ini_setting { 'puppetdb_jetty_max_threads':
    ensure  => present,
    path    => '/etc/puppetlabs/puppetdb/conf.d/jetty.ini',
    section => 'jetty',
    setting => 'max-threads',
    value   => String($max_threads),
  }
}
