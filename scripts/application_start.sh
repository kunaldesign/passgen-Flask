#!/bin/bash

echo "Running container..."
docker run --name flask_app -d -p 5000:5000 767397856705.dkr.ecr.ap-south-1.amazonaws.com/passgen-flask:latest