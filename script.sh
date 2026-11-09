#!/bin/bash

case "${1:-mem}" in
    mem)
        total=$(free -m | awk '/^Mem:/ {print $2}')
        used=$(free -m | awk '/^Mem:/ {print $3}')
        free_mem=$(free -m | awk '/^Mem:/ {print $4}')
        echo "=== Memory (MB) ==="
        echo "Total: ${total}"
        echo "Used:  ${used}"
        echo "Free:  ${free_mem}"
        ;;
    *)
        echo "Usage: $0 mem"
        exit 1
        ;;
esac