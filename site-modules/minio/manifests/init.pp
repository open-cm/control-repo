class minio {
  notice('Setting up Minio...')
  # Intentional failure: try to create a file in a non-existent folder
  file { '/nonexistent_minio_dir/config.json':
    ensure  => file,
    content => "minio_fail\n",
  }
}
