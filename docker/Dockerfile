FROM maven:3.5-jdk-8 as buildstage
RUN addgroup -S notes && adduser -S notes -G notes
USER notes:notes
ARG JAR_FILE=*.jar
COPY ${JAR_FILE} easy-note.jar
ENTRYPOINT ["java","-jar","/easy-note.jar"]