class base {
   include atlas_module
}

node default {
   include base

}


# configuration for ganglia headnode
node /headnode/ {
   notify {
        'hello':
                message => 'Hello headnode'

   }


}

