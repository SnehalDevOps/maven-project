FROM tomcat:7
MAINTAINER = "vbobade@altimetrik.com"
WORKDIR /var/lib/jenkins/workspace/
RUN chmod -R 777 */webapp/target/*.war
ADD /var/lib/jenkins/workspace/Q_pipeline/webapp/target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
