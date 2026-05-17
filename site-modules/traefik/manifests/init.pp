class traefik {
  notice('Setting up Traefik...')
  # Intentional failure: try to install a non-existent package
  package { 'nonexistent-traefik-pkg-fail':
    ensure => installed,
  }
}

