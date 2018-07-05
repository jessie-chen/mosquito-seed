FROM openjdk:8-jre-alpine
MAINTAINER mosquito-team <developer@mosquito.com>

ENTRYPOINT ["/usr/bin/java", "-jar", "/usr/share/demo-backend-service/demo-backend-service.jar"]

# Add Maven dependencies (not shaded into the artifact; Docker-cached)
ADD target/lib           /usr/share/demo-backend-service/lib

# Add the service itself
ARG JAR_FILE
ADD target/${JAR_FILE} /usr/share/demo-backend-service/demo-backend-service.jar
