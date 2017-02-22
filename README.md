# Puppet Module devenv
Puppet module to setup my personalized development environment. It's highly opinionated and probably not for most. Lacking detailed explanation, use at own risk.

# Installation

To deploy this module manually:

1. Clone the remote repository:
	
	``` 
	git clone https://github.com/kmacoske/puppet-devenv
	```

2. Puppet apply:

	```
	puppet apply --modulepath=/path/to/modules/ -e "include devenv"
	```


