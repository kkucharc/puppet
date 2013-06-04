class ganglia::gmond::config {
   include ganglia::params
   file { 'gmond.conf':
	path => '/etc/ganglia/gmond.conf',
	ensure => present,
	content => 'ganglia/gmond/worknode.erb',
	require => Class["ganglia::gmond::install"],
	notify => Class ["ganglia::gmond::run"]
   }

}
