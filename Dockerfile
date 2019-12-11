FROM tomcat
MAINTAINER = "vbobade@altimetrik.com"
RUN mvn clean package
ADD */*/*/*.war /usr/share/tomcat/webapps/
EXPOSE 9000
CMD ["/bin/bash", "-c", "CATALINA_OPTS=\"$CATALINA_OPTS -javaagent:$CATALINA_HOME/webapp.war\" catalina.sh run"]
