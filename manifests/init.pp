# @param config [Stdlib] Specifies a file for OpenVpns's configuration info. Default value: '/etc/devenv/devenvn.conf'
# Optional[Stdlib::Absolutepath] $config,
class devenv (
){

	$scope = {
		'server_facts' => $server_facts,
		'module_name' => $module_name
	}

  	# Anchor this as per #8040 - this ensures that classes won't float off and
  	# mess everything up.  You can read about this at:
  	# http://docs.puppetlabs.com/puppet/2.7/reference/lang_containment.html#known-issues

  	contain devenv::install
  	contain devenv::config
	contain devenv::service


	Class['::devenv::install'] ->
    	Class['::devenv::config'] ~>
	Class['::devenv::service']

}
