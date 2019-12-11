FROM tomcat
USER jenkins
MAINTAINER = "vbobade@altimetrik.com"
ADD */*/*/*.war /usr/share/tomcat/webapps/
EXPOSE 9000
CMD ["/bin/bash", "-c", "CATALINA_OPTS=\"$CATALINA_OPTS -javaagent:$CATALINA_HOME/webapp.war\" catalina.sh run"]
