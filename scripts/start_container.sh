#!/bin/bash
set -e

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 881015300215.dkr.ecr.us-east-1.amazonaws.com

docker pull 881015300215.dkr.ecr.us-east-1.amazonaws.com/node:latest

docker run -d -p 80:80 881015300215.dkr.ecr.us-east-1.amazonaws.com/node:latest
