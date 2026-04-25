# Basic profile to apply to all nodes
class profile::base {
  # Add basic resources here
  notify { 'Applying base profile from control-repo': }
}
