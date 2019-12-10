FROM tomcat:7
MAINTAINER = "vbobade@altimetrik.com"
WORKDIR /var/lib/jenkins/workspace/
ADD /var/lib/jenkins/workspace/Q_pipeline/webapp/target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
