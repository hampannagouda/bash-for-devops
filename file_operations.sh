#!/bin/bash

echo "====================================="

process_files() {
    local ACTION="$1"
    local SRC="$2"
    local DEST="$3"
    local count=0

    echo "Checking destination..."
    echo "==========================="

    if [ ! -e "$DEST" ]; then
        mkdir -p "$DEST" 2>/dev/null
    fi

    case "$ACTION" in
        copy)
            for i in $SRC; do
                cp "$i" "$DEST"
                ((count++))
            done
            ;;
        move)
            for i in $SRC; do
                mv "$i" "$DEST"
                ((count++))
            done
            ;;
        add)
            # DEST is the output file
            > "$DEST"
            for i in $SRC; do
                cat "$i" >> "$DEST"
                ((count++))
            done
            ;;
    esac

    echo "Total files processed: $count"
}

echo "Operation begins......."

case "$1" in
    copy)
        process_files "copy" "$2" "$3"
        ;;
    move)
        process_files "move" "$2" "$3"
        ;;
    add)
        process_files "add" "$2" "$3"
        ;;
    *)
        echo "Usage:"
        echo "  $0 copy '/path/*.conf' /backup"
        echo "  $0 move '/path/*.conf' /backup"
        echo "  $0 add  '/path/*.txt' output.txt"
        ;;
esac

echo "====================================="

#bash file_operations.sh copy "/etc/*.conf" "/root/backup"
#bash file_operations.sh move "/etc/*.conf" "/root/backup"
#bash file_operations.sh add "/etc/*.conf" "/root/all_conf.txt"
