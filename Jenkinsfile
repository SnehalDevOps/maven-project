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
}
}
