#!/bin/bash

# Step 1: Date দিয়ে version name বানানো
VERSION=$(date +%Y%m%d%H%M%S)

# Step 2: New release directory path
RELEASE_PATH="/var/www/releases/$VERSION"

echo "Creating new release directory..."
mkdir -p $RELEASE_PATH

echo "Cloning repository..."
git clone https://github.com/Mohan02272/SECURE-Linux-EC2-AWS-.git $RELEASE_PATH

echo "Updating symlink..."
sudo ln -sfn $RELEASE_PATH /var/www/current

echo "Deployment complete!"
