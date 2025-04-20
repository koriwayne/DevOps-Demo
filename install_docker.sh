#!/bin/bash

# Update the system
sudo yum update -y

# Install required packages
sudo yum install -y docker

# Start Docker service
sudo systemctl start docker

# Enable Docker to start on boot
sudo systemctl enable docker

# Add the ec2-user to the docker group to run Docker commands without sudo
sudo usermod -a -G docker ec2-user

# Verify Docker installation
docker --version

echo "Docker has been installed successfully!"
echo "Please log out and log back in for the group changes to take effect." 

