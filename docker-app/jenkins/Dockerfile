FROM jenkins

USER root

RUN apt-get update && apt-get install -y expect

USER jenkins

CMD ["/usr/bin/java",  "-jar",  "/usr/share/jenkins/jenkins.war"]