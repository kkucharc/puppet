class ganglia::install {
   package {
	'ganglia-gmond':
		ensure => installed
   }

}
