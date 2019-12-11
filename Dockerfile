FROM openjdk:8
MAINTAINER = "vbobade@altimetrik.com"
WORKDIR /var/lib/jenkins/workspace/Q_pipeline/webapp
COPY target/*.war /webapp.war
CMD ["java", "-jar", "/webapp.war"]

#FROM java:8
#EXPOSE 9001
#ADD webapp/target/*.war webapp.war
#ENTRYPOINT ["java", "-jar", "webapp.war"]
