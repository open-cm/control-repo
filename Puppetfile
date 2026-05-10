forge 'https://forgeapi.puppet.com'

# Standard Library
mod 'puppetlabs-stdlib', '9.6.0'

# Concat (often needed by other modules)
mod 'puppetlabs-concat', '9.1.0'

# A common utility module
mod 'puppetlabs-apt', '9.4.0'

# Docker management
mod 'puppetlabs-docker', '10.4.0'

# Archive management (for downloading binaries)
mod 'puppet-archive', '8.1.0'

# Local Modules (site-modules)
# These are kept in the control repo and not downloaded from the forge
# mod 'kubernetes', :local => true
# mod 'openobserve', :local => true

mod 'elasticsearch',
  :git => 'https://github.com/open-cm/config-elasticsearch.git',
  :branch => 'main'

mod 'zabbix',
  :git => 'https://github.com/open-cm/config-zabbix.git',
  :branch => 'main'
