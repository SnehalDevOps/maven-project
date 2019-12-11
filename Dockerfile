FROM tomcat
MAINTAINER = "vbobade@altimetrik.com"
ADD */webapp/target/webapp.war /usr/share/tomcat/webapps/
CMD ["catalina.sh", "run"]
