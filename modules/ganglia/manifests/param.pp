class ganglia::params {
   case $operatingsystem {
      SLC {
         $conf_dir = '/etc/ganglia'
      }
   }
}