#!/bin/bash

echo "====================================="

check_package() {
    local pkg="$1"

    if command -v "$pkg" >/dev/null 2>&1; then
        echo "$pkg is already installed."
        "$pkg" --version 2>/dev/null | head -1
    else
        echo "$pkg is not installed."
        echo "Installing $pkg ..."

        apt-get update -y
        apt-get install -y "$pkg"

        if command -v "$pkg" >/dev/null 2>&1; then
            echo "$pkg installed successfully."
            "$pkg" --version 2>/dev/null | head -1
        else
            echo "Failed to install $pkg."
        fi
    fi
}

echo "Select operation..."

case "$1" in
    check)
        check_package "$2"
        ;;
    *)
        echo "Usage:"
        echo "bash sam.sh check <package-name>"
        ;;
esac

echo "====================================="

#command to execute
#bash apt_get.sh check tree
