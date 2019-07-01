   
FROM maven:3.5-jdk-8-slim

COPY /. /myfiles

WORKDIR /myfiles

EXPOSE 8080

ENV JAVA_OPTS=""

CMD ["java","java $JAVA_OPTS -Dserver.port=$PORT -jar /myfiles/backend/target/ngboot-app.jar"]
