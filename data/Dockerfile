FROM ubuntu:14.04

RUN groupadd nexus && useradd nexus -g nexus -u 200 &&\
       mkdir -p /sonatype-work ; chown -R nexus:nexus /sonatype-work

RUN groupadd jenkins && useradd jenkins -g jenkins -u 1000 &&\
       mkdir -p /var/jenkins_home ; chown -R jenkins:jenkins /var/jenkins_home


VOLUME ["/var/jenkins_home"]
VOLUME ["/sonatype-work"]


CMD ["true"]
