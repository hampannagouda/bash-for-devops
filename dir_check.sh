#!/bin/bash

echo "====================================="

check_dir() {
    local dir="$1"

    echo "Checking directory..."

    if [ -d "$dir" ]; then
        echo "[SUCCESS] Directory exists: $dir"
    else
        echo "[INFO] Directory does not exist: $dir"
        echo "[INFO] Creating directory..."

        mkdir -p "$dir"

        if [ $? -eq 0 ]; then
            echo "[SUCCESS] Directory created successfully."
            ls -l "$(dirname "$dir")"
        else
            echo "[ERROR] Failed to create directory."
        fi
    fi
}

echo "Select operation..."

case "$1" in
    checkdir)
        check_dir "$2"
        ;;
    *)
        echo "Usage:"
        echo "  $0 checkdir  <directory_path>"
        ;;
esac

echo "====================================="
