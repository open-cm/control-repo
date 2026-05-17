class postgres::standby {
  include postgres
  notice('Setting up Postgres Standby...')
}
