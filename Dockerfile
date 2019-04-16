FROM openjdk:8-jre
VOLUME /tmp
ARG JAR_FILE
ADD target/simple-app-1.0.jar app.jar
RUN bash -c 'touch /app.jar'
EXPOSE 8081
ENTRYPOINT ["java","-jar","/app.jar"]
