FROM tomcat
MAINTAINER = "vbobade@altimetrik.com"
COPY */webapp/target/*.war /usr/share/tomcat/webapps
