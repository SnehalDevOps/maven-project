#!/bin/bash

sudo mkdir -p /opt/docker_image
sudo cp -rf /var/lib/jenkins/workspace/Q_pipeline/Dockerfile /opt/docker_image
sudo cp -rf /var/lib/jenkins/workspace/Q_pipeline/webapp/target/*.war /opt/docker_image
sudo cp -rf /var/lib/jenkins/workspace/Q_pipeline/webapp/target/*.war /var/lib/jenkins/workspace/
sudo docker build -f Dockerfile  -t vpbobade/mydockerimage:1.0.0 . > docker_out
image_name=`cat docker_out | tail -1 | awk -F' ' ' { print $3 } '` 
echo "Image created as $image_name"
