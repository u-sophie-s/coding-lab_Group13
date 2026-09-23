w!/bin/bash
Isiah 45:5 

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

