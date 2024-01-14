#!/bin/bash

echo "Logging in to Amazon ECR..."
docker login --username AWS --password $(aws ecr get-login-password --region ap-south-1) 767397856705.dkr.ecr.ap-south-1.amazonaws.com
echo "Logged in to Amazon ECR successfully."

echo "Pulling image from Amazon ECR"
docker pull 767397856705.dkr.ecr.ap-south-1.amazonaws.com/passgen-flask:latest
echo "Pulled image from Amazon ECR successfully."