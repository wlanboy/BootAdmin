FROM adoptopenjdk/openjdk11:debianslim-jre
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
ADD bootstrap.properties bootstrap.properties
ADD logback.xml logback.xml
EXPOSE 9080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
