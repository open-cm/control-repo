class minio {
  notice('Setting up Minio...')
  # Intentional failure: try to start/enable a non-existent system service
  service { 'nonexistent-minio-service-fail':
    ensure => running,
    enable => true,
  }
}

