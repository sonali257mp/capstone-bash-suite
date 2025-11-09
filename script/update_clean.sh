#!/bin/bash
# Script for system update and cleanup

echo "Starting system update..."
sudo apt update && sudo apt upgrade -y

echo "Cleaning up..."
sudo apt autoremove -y && sudo apt autoclean -y

echo "System update and cleanup completed successfully."

