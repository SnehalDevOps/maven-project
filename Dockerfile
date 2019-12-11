FROM openjdk:8
MAINTAINER = "vbobade@altimetrik.com"
WORKDIR /var/lib/jenkins/workspace/Q_pipeline/webapp
ADD target/*.war /usr/share/tomcat/webapps/

#FROM java:8
#EXPOSE 9001
#ADD webapp/target/*.war webapp.war
#ENTRYPOINT ["java", "-jar", "webapp.war"]
