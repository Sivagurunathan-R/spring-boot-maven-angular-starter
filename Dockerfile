    
FROM openjdk:8

FROM maven:3.5-jdk-8

COPY /. /myfiles

WORKDIR /myfiles

RUN mvn clean package

