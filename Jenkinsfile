pipeline {
agent any
stages {
stage('SCM Checkout'){
git 'https://github.com/prakashk0301/maven-project'
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
}
}
stage ('test') {
steps {
withMaven(maven : 'LocalMaven') {
sh 'mvn test'
}
}
}
stage ('package'){
steps {
withMaven(maven : 'LocalMaven') {
sh 'mvn package'
}
}
}
stage ('install'){
steps {
withMaven(maven : 'LocalMaven') {
sh 'mvn  install'
}
}
}
