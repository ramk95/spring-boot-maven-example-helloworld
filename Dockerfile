FROM maven:3.5.2-jdk-8-alpine AS MAVEN_BUILD
COPY pom.xml /build/
COPY src /build/src/
WORKDIR /build/
RUN mvn package
FROM tomcat:8.0.51-jre8-alpine
COPY --from=MAVEN_BUILD build/target/HelloWorldSpring-1.3.5.RELEASE.war /usr/local/tomcat/webapps/hello.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
