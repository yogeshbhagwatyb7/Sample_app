#!/bin/bash

# Function to display error message and exit with non-zero exit code
exit_with_error() {
    echo "Error: $1"
    exit 1
}

echo "Building application..."
# Add your build commands here
# Example: ./build.sh
if [ $? -ne 0 ]; then
    exit_with_error "Failed to build application"
fi
echo "Application built successfully."

echo "Deploying application..."
# Add your deployment commands here
# Example: ./deploy_app.sh
if [ $? -ne 0 ]; then
    exit_with_error "Failed to deploy application"
fi
echo "Application deployed successfully."
