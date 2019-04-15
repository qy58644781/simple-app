FROM openjdk:8-jre
VOLUME /tmp
ARG JAR_FILE
ADD ./target/${JAR_FILE} app.jar
RUN bash -c 'touch /app.jar'
EXPOSE 8082
ENTRYPOINT ["java","-jar","/app.jar"]
