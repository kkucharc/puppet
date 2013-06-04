class ganglia::config {
   include ganglia::params
   file { $ganglia::params::conf_dir:
	ensure => present,
	require => Class["ganglia::install"],
	notify => Class ["ganglia::run"]
   }

}
