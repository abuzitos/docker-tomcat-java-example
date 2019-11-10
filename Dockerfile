FROM tomcat:alpine

RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
COPY ./sample.war /usr/local/tomcat/webapps/ROOT.war
