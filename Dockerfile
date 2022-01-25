  FROM tomcat:9.0
  LABEL maintainer="jonayhi17@iespuerto.es"

  ARG WAR_FILE= target/*.war

  ADD ${WAR_FILE} /usr/local/tomcat/webapps/

  EXPOSE 8080
  CMD ["catalina.sh", "run"]