    
FROM openjdk:8

FROM maven:3.5-jdk-8

COPY /. /myfiles

WORKDIR /myfiles


RUN mvn dependency:go-offline -B

RUN mvn clean package

