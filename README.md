# BootAdmin
Spring Boot Admin Web GUI Project

Based on http://codecentric.github.io/spring-boot-admin/current/.

## Dependencies
At least: Java 8 and Maven 3.5

## Build Service Logging
mvn package -DskipTests=true

## Run Service Logging
### Environment variables
#### EUREKA_ZONE 
Default value: http://127.0.0.1:8761/eureka/
Defining all available Eureka Instances.

### Windows
java -jar target\BootAdmin-0.0.1-SNAPSHOT.jar

### Linux (service enabled)
./target/BootAdmin-0.0.1-SNAPSHOT.jar start

## Docker build
docker build -t bootadmin:latest . --build-arg JAR_FILE=./target/BootAdmin-0.0.1-SNAPSHOT.jar

## Docker run
docker run --name bootadmin -d -p 9411:9411 --link serviceregistry:serviceregistry -v /tmp:/tmp -e EUREKA_ZONE=$EUREKA_ZONE servicelogs:latest

## Check Admin UI
http://localhost:9080/
