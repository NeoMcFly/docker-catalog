FROM ubuntu:14.04

RUN apt-get update && apt-get install -y wget 

#RUN wget -x http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz -O /opt/android-sdk.tgz && \
#      tar xfz /opt/android-sdk.tgz -C /opt/ && \
#      rm -f /opt/android-sdk.tgz && \
#      chmod -R uog+rwx /opt/android-sdk-linux

RUN mkdir -p /opt/android-sdk-linux/tools/ && \
      echo "echo hello" > /opt/android-sdk-linux/tools/android && \
      chmod -R 777 /opt/android-sdk-linux

VOLUME /opt/android-sdk-linux
