node default {
#node 'headnode-atlas' {
#include httpd
   package {
	'ganglia-gmond':
		ensure => installed
   }

   service {
	'gmond':
		ensure => true,
		enable => true,
		require => Package['ganglia-gmond']
   }

   notify { 
	'gmond-install':
		message => 'Ganglia gmon package installed',
		require => Package['ganglia-gmond']
   }

   notify {
	'gmond-run':
		message => 'Ganglia is running',
		require => Service['gmond']

   }


}


# configuration for ganglia headnode
node /headnode/ {
   notify {
        'hello':
                message => 'Hello headnode'

   }


}

