FROM openjdk:8-jre-alpine
MAINTAINER mosquito-team <developer@mosquito.com>

ENTRYPOINT ["/usr/bin/java", "-jar", "/usr/share/config-server/config-server.jar"]

# Add Maven dependencies (not shaded into the artifact; Docker-cached)
ADD target/lib           /usr/share/config-server/lib

# Add the service itself
ARG JAR_FILE
ADD target/${JAR_FILE} /usr/share/config-server/config-server.jar
