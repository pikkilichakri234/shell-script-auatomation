#!/bin/bash

echo "Enter your choice (start, stop, restart, status):"
read action

case $action in
    start)
        echo "Starting the service..."
        ;;
    stop)
        echo "Stopping the service..."
        ;;
    restart)
        echo "Restarting the service..."
        ;;
    status)
        echo "Checking the status of the service..."
        ;;
    *)
        echo "Invalid choice! Please enter start, stop, restart, or status."
        ;;
esac
