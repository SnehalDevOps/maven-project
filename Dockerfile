FROM tomcat:7
USER root
ENTRYPOINT ["bash", "-c", "chmod -R 777 /usr/share/tomcat/webapps/"]
COPY /var/lib/jenkins/workspace/qualys_pipeline_1/webapp/target/*.war /usr/share/tomcat/webapps/
