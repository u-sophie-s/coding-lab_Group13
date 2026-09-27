
#!/bin/bash


initialize_system() {
    for dir in active_logs archived_logs reports; do
        if [ ! -d "$dir" ]; then
            echo "Creating $dir directory..."
            mkdir -p "$dir"
        else
            echo "$dir directory already exists."
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



