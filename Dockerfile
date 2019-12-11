FROM tomcat
MAINTAINER = "vbobade@altimetrik.com"
WORKDIR /var/lib/jenkins/workspace/
COPY */webapp/target/*.war /usr/share/tomcat/webapps
