FROM openjdk:11-jre
MAINTAINER TOO Reself <info@reself.kz>

ADD ./target/db-struct-0.0.1-SNAPSHOT.jar /app/

CMD ["java", "-Xmx200m", "-jar", "/app/db-struct-0.0.1-SNAPSHOT.jar"]

EXPOSE 8086
