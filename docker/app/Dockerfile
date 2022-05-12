FROM tomcat:9-jre8-temurin-focal

ENV DEBIAN_FRONTEND="noninteractive"
ENV TZ="Europe/London"

RUN apt-get update

COPY ssb/build/extract /usr/local/tomcat/webapps/identityiq

CMD /usr/local/tomcat/bin/catalina.sh run

EXPOSE 8080