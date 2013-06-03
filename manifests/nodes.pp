class base {
   include ganglia
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

