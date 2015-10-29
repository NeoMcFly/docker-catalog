FROM jenkins

RUN apt-get update && apt-get install -y expect

CMD ["/usr/bin/java",  "-jar",  "/usr/share/jenkins/jenkins.war"]