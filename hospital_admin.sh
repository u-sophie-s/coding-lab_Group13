#!/usr/bin/bash

initialize_system() {

for directories in active_logs archived_logs reports; do
                if [ -d "$directories" ]; then
                        echo "$directories already exists"

                else
                        echo " $directories doesn't exist yet, lets create it ..."
                        mkdir "$directories"

                fi

        done
}

secure_data() {
	
 
}

#groupmember3writeshere



