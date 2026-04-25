# The site.pp file is the main entry point for the Puppet agent.
# It is used to map nodes to classes and resources.

node default {
  # Default node classification
  include profile::base
}
