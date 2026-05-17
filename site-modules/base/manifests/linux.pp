class base::linux {
  include base
  notice('Applying Linux base configuration...')
  file { '/etc/base_configured':
    ensure  => file,
    content => "Base Linux configuration applied\n",
  }
}
