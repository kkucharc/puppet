node * {
node 'slc6-cloud-init-test1' {
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
