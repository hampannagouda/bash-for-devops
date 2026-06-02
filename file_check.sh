#!/bin/bash

echo "====================================="

check_file() {
    echo "Checking if file is present..."

    if [ -f "$1" ]; then
        echo "File '$1' is present."
        return 0
    else
        echo "File '$1' is not present."
        return 1
    fi

    echo "Function execution completed."
}

show_usage() {
    echo "Usage:"
    echo "  $0 checkfile <filename>"
}

echo "Select operation..."

case "$1" in
    checkfile)
        if [ -z "$2" ]; then
            echo "Error: Filename not provided."
            show_usage
            exit 1
        fi
        check_file "$2"
        ;;
    -h|--help)
        show_usage
        ;;
    *)
        echo "Invalid operation."
        show_usage
        exit 1
        ;;
esac

echo "====================================="
