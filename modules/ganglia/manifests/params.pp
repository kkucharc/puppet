class ganglia::params {
	
   case $operatingsystem {
      /(SLC|CerntOS)/: {
         $conf_dir = '/etc/ganglia/'
      }    
   }


   $node = 'gmond.conf'
   $head = 'gmetad.conf'
   $metics = 'metrics.conf'


}
