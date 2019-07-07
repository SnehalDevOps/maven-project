pipeline {
agent any
stages {
stage ('SCM Checkout'){
git 'https://github.com/vpbobade/maven-project.git'
}
}
{
stage ('Compile Stage') {
steps {
withMaven(maven : 'LocalMaven') {
sh 'mvn clean compile'
}
}
}
stage ('Compile test') {
steps {
withMaven(maven : 'LocalMaven') {
sh 'mvn clean test'
}
}
}
stage ('Compile package'){
steps {
withMaven(maven : 'LocalMaven') {
sh 'mvn clean package'
}
}
}
stage ('Compile install'){
steps {
withMaven(maven : 'LocalMaven') {
sh 'mvn clean install'
}
}
}
stage ('Compile deploy'){
steps {  
withMaven(maven : 'LocalMaven') {
sshagent (credentials: ['179ff7b9-dcbf-42ed-8078-d3ae0f333e9a']) {
sh 'scp -o StrictHostKeyChecking=no -l */target/webapps/*.war ec2-user@3.95.169.64:/usr/share/tomcat/webapps/'
}
}
}
}
}  
}
