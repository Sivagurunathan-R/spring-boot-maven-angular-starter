    
FROM openjdk:8

FROM maven:3.5-jdk-8

COPY /. /myfiles

WORKDIR /myfiles

EXPOSE 8080

CMD ["java", "-jar", "/myfiles/backend/target/ngboot-app.jar"]
