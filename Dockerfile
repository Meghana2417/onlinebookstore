FROM eclipse-temurin:11-jre
RUN apt-get update && apt-get install -y tomcat9
COPY target/onlinebookstore.war /var/lib/tomcat9/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]

