class ganglia_init {
   include ganglia::gmond::install, ganglia::gmond::config, ganglia::gmond::run


#   case $hostname {
#      /('headnode')/:
#         include ganglia::gmetad::install, ganglia::gmetad::config, ganglia::gmetad::run
#   }


}
