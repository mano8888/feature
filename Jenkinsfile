node{
stage('scm checkout'){
git url: 'https://github.com/mano8888/feature.git'
}
stage('mvn package'){
sh 'mvn clean'
}
stage('mvn test package'){
sh 'mvn test'
}

}
