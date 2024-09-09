FROM tomcat:9.0-jdk11-temurin-jammy

WORKDIR /usr/local/tomcat/webapps

# Remove the default ROOT web application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy the WAR file to the webapps directory
COPY /target/calculator.war ./ROOT.war

# Expose the port that Tomcat listens on
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]