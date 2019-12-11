FROM tomcat
MAINTAINER = "vbobade@altimetrik.com"
ADD */*/*/*.war /usr/share/tomcat/webapps/
CMD ["catalina.sh", "run"]
