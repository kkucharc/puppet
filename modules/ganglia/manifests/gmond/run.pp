class ganglia::gmond::run{
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
