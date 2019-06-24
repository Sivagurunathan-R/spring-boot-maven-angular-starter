FROM maven:3.5-jdk-8-alpine as build 
WORKDIR /app
COPY --from=clone /app/spring-petclinic /app 
FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=build /app/target/spring-petclinic-1.5.1.jar /app
CMD ["java -jar spring-petclinic-1.5.1.jar"]
