class gagnglia::configure {
   file { $ganglia::params::conf_dir'/gmond.conf':
      ensure => present,
   }

}