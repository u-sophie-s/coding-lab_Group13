
#!/usr/bin/bash
initialize_system() {
        for directories in active_logs archived_logs report; do
                if [ -d "$directories" ]; then
                        echo "$directories already exists"

                else
                        echo " $directories doesn't exist yet, lets create it ..."
                        mkdir "$directories"

                fi

        done
}

secure_data() {

        permission=$(stat -c "%a" active_logs)

        if [ $permission= 700 ]
                echo "permission set so only owner can read and write"
        else
                echo "permissions not set correctly, Fixing ..."
                chmod 700 active_logs

        fi
        ls -ld active_logs
}

#groupmember3writeshere


