FROM bellsoft/liberica-openjdk-debian:20
VOLUME /tmp
ADD target/NativesClubLanding-0.0.1-SNAPSHOT.jar target/app.jar
ARG JAR_FILE
ENTRYPOINT ["java","-jar","target/app.jar"]