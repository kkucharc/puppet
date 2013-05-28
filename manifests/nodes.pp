node default {
   include atlas-module
}


# configuration for ganglia headnode
node /headnode/ {
   notify {
        'hello':
                message => 'Hello headnode'

   }


}

