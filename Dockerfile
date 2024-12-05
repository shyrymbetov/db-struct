FROM 10.0.84.11:31082/maven:3.8.4-eclipse-temurin-17-alpine AS build

WORKDIR /app

COPY pom.xml .
#RUN mvn dependency:resolve

COPY . .
RUN mvn package -s .m2/settings.xml
RUN ls -la /app/target

FROM 10.0.84.11:31082/eclipse-temurin:17-jre-alpine

MAINTAINER TOO Reself <info@reself.kz>

COPY --from=build /app/target/db-struct-0.0.1-SNAPSHOT.jar /app/

CMD ["java", "-Xmx200m", "-jar", "/app/db-struct-0.0.1-SNAPSHOT.jar"]

EXPOSE 8086
