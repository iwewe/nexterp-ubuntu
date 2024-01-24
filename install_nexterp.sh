#!/bin/bash

# NextERP Installation Script

# Prerequisites
echo "Installing Docker..."
sudo apt update
sudo apt install -y docker.io

echo "Installing Docker Compose..."
sudo apt install -y docker-compose

# Clone NextERP Repository
echo "Cloning NextERP repository..."
git clone https://github.com/nexterp/nexterp.git
cd nexterp

# Create Docker Compose File
echo "Creating docker-compose.yml file..."
cat <<EOL > docker-compose.yml
version: '3'

services:
  web:
    image: nexterp/nexterp-web:latest
    ports:
      - "8069:8069"
    depends_on:
      - db
  db:
    image: postgres:13
    environment:
      POSTGRES_DB: nexterp
      POSTGRES_USER: nexterp
      POSTGRES_PASSWORD: nexterp
EOL

# Start NextERP
echo "Starting NextERP..."
docker-compose up -d

# Display login information
echo ""
echo "NextERP has been successfully installed!"
echo "Open your web browser and navigate to http://localhost:8069"
echo "Login to NextERP with the following credentials:"
echo "  - Database: nexterp"
echo "  - Login: admin"
echo "  - Password: admin"
echo "Note: Change the default admin password after the initial login."
