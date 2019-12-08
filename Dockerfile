FROM tomcat:7
COPY /webapp/target/*.war /usr/local/tomcat/webapps/
