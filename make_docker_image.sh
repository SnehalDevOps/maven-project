#!/bin/bash

cp -rf /var/lib/jenkins/workspace/Q_pipeline/Dockerfile /root
cp -rf /var/lib/jenkins/workspace/Q_pipeline/webapp/target/*.war /root
chmod -R 777 Dockerfile *.war
docker build -f Dockerfile  -t vpbobade/mydockerimage:1.0.0 . > docker_out
image_name=`cat docker_out | tail -1 | awk -F' ' ' { print $3 } '` 
echo "Image created as $image_name"
