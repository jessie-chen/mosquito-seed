FROM openjdk:8-jre-alpine
MAINTAINER mosquito-team <developer@mosquito.com>

ENTRYPOINT ["/usr/bin/java", "-jar", "/usr/share/discovery-server/discovery-server.jar"]

# Add Maven dependencies (not shaded into the artifact; Docker-cached)
ADD target/lib           /usr/share/discovery-server/lib

# Add the service itself
ARG JAR_FILE
ADD target/${JAR_FILE} /usr/share/discovery-server/discovery-server.jar
