![Java CI with Maven](https://github.com/wlanboy/BootAdmin/workflows/Java%20CI%20with%20Maven/badge.svg?branch=master) 
![Docker build and publish image](https://github.com/wlanboy/BootAdmin/workflows/Docker%20build%20and%20publish%20image/badge.svg)
# BootAdmin
Spring Boot Admin Web GUI Project

Based on http://codecentric.github.io/spring-boot-admin/current/.

## Dependencies
At least: Java 11 and Maven 3.5

## Build Service Logging
mvn package -DskipTests=true

## Run Service Logging
### Windows
java -jar target\BootAdmin-0.0.1-SNAPSHOT.jar

### Linux (service enabled)
./target/BootAdmin-0.0.1-SNAPSHOT.jar start

## Docker build
docker build -t bootadmin:latest . --build-arg JAR_FILE=./target/BootAdmin-0.0.2-SNAPSHOT.jar

## Docker run
docker run --name bootadmin -d -p 9080:9080 -v /tmp:/tmp bootadmin:latest

## Check Admin UI
http://localhost:9080/
