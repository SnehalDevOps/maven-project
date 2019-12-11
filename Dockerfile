FROM tomcat
MAINTAINER = "vbobade@altimetrik.com"
WORKDIR /var/lib/jenkins/workspace/Q_pipeline/webapp/target
COPY  . /usr/share/tomcat/webapps
ADD *.war /usr/share/tomcat/webapps
