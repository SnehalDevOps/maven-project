FROM openjdk:8
MAINTAINER = "vbobade@altimetrik.com"
RUN cd /var/lib/jenkins/workspace/Q_pipeline/webapp/target
COPY *.war /usr/share/tomcat/webapps/
