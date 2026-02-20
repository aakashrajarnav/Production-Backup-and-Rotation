#!/bin/bash
#
#this script takes the package name from user and install it if not present

read -p "Enter the package name: " package_name

echo "checking if package is already installed..."

if dpkg -s $package_name >/dev/null 2>&1 ; then
	echo "$package_name already installed"
else
	echo "Continuing installation..."
    	echo "Updating system & installing $package_name"
    	sudo apt-get update
    	sudo apt-get install "$package_name" -y
fi

read -p "Enter the service name: " service_name

sudo systemctl start $service_name

echo "Displaying status of $service_name..."
systemctl status "$service_name" --no-pager

# Ask user if they want to stop the service
read -p "Do you want to stop $service_name? (y/n): " choice

if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
    echo "Stopping $service_name..."
    sudo systemctl stop "$service_name"
    echo "$service_name has been stopped."
else
    echo "$service_name will continue running."
fi
