# Pull base image
FROM openjdk:8-jre-alpine

MAINTAINER aelkouhen@norauto.com

RUN mkdir -p /opt/app

# Copy sources
COPY build/libs/eureka.jar /opt/app/

# Define working directory
WORKDIR /opt/app/

EXPOSE 8000

VOLUME /var/lib/eb-poc-repo

ENTRYPOINT ["java", "-jar", "/opt/app/eureka.jar"]
