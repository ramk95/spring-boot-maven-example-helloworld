FROM tomcat:8.0.51-jre8-alpine
COPY target/HelloWorldSpring-1.3.5.RELEASE.war /usr/local/tomcat/webapps/hello.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
