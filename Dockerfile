FROM openjdk:8
WORKDIR /
ADD backend/target/ngboot-app.jar backend/target/ngboot-app.jar
EXPOSE 8080
CMD java - jar ngboot-app.jar
