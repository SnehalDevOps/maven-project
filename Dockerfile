FROM tomcat
MAINTAINER = "vbobade@altimetrik.com"
ADD /var/lib/jenkins/workspace/Q_pipeline/webapp/target/webapp.war /usr/share/tomcat/webapps/
CMD ["catalina.sh", "run"]
