FROM 10.0.84.11:31082/maven:3-eclipse-temurin-11-alpine AS build

WORKDIR /app

COPY pom.xml .
RUN mvn dependency:resolve

COPY . .
RUN mvn package -s .m2/settings.xml

FROM 10.0.84.11:31082/eclipse-temurin:11-jre-alpine

MAINTAINER TOO Reself <info@reself.kz>

ADD ./target/db-struct-0.0.1-SNAPSHOT.jar /app/

CMD ["java", "-Xmx200m", "-jar", "/app/db-struct-0.0.1-SNAPSHOT.jar"]

EXPOSE 8086
