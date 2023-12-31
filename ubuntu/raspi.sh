#!/bin/bash

# Check if root.tar already exists in the current directory
if [ ! -f "root.tar.xz" ]; then
    echo "Downloading root.tar..."
    wget https://downloads.raspberrypi.org/raspios_arm64/root.tar.xz
fi

# Import the Docker image
docker image import root.tar lakky/raspios_lite:latest

# Run the container with a specific name
docker run -d -p 2222:22 --name raspiosc lakky/raspios_lite:latest /bin/bash -c "ls; sleep infinity"


#!/bin/bash

# Define the inventory file path
INVENTORY_PATH=./inventory.ini

# Define the playbook file path
PLAYBOOK_PATH=./install_docker.yml

# Run the Ansible playbook
ansible-playbook -i $INVENTORY_PATH $PLAYBOOK_PATH
