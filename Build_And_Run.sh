#!/bin/bash

# Enable error detection: Exit immediately if a command exits with a non-zero status
set -e

# Function to print error messages
error_exit() {
    echo "Error: $1"
    exit 1
}

# Navigate to the directory containing the docker-compose.yml file
cd /home/tahoonmaha/CRUD_Application_Node || error_exit "Failed to change directory to /path/to/your/docker-compose/directory"


docker-compose down || error_exit "Failed to bring down existing services"


docker-compose up -d || error_exit "Failed to start Docker Compose services"

# Check the status of the running containers
echo "Checking Docker Compose status..."
docker-compose ps || error_exit "Failed to retrieve Docker Compose status"

echo "Docker Compose services are up and running successfully."

