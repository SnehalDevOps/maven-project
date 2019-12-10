FROM tomcat:7
MAINTAINER = "vbobade@altimetrik.com"
WORKDIR /var/lib/jenkins/workspace/Q_pipeline
COPY webapp/target/*.war /usr/local/tomcat/webapps/
