class traefik {
  notice('Setting up Traefik...')
  # Intentional failure: try to create a file in a non-existent folder
  file { '/nonexistent_traefik_dir/traefik.toml':
    ensure  => file,
    content => "traefik_fail\n",
  }
}
