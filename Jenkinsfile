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
sh 'mvn clean test'
}
}
}
stage ('package'){
steps {
withMaven(maven : 'LocalMaven') {
sh 'mvn clean package'
}
}
}
stage ('install'){
steps {
withMaven(maven : 'LocalMaven') {
sh 'mvn clean install'
}
}
}
stage ('deploy'){
steps {
withMaven(maven : 'LocalMaven') {
sh 'mvn clean deploy'
}
}
}
