env=$1
if [ $env = QA]
then
	sshpass -p manoj target/branch.war manoj@172.17.0.2 /home/Devops/tomcat/webapps
	sshpass -p manoj manoj@172.17.0.2 JAVA_HOME="/home/Devops/jdk 1.8_0.1" "/home/Devops/tomcat/bin/startup.sh && bash"
elif [ $env = SIT ]
then
	 sshpass -p manoj target/branch.war manoj@172.17.0.3 /home/Devops/tomcat/webapps
        sshpass -p manoj manoj@172.17.0.3 JAVA_HOME="/home/Devops/jdk 1.8_0.1" "/home/Devops/tomcat/bin/startup.sh && bash"
else
	echo "deploying the containers"
fi
