FROM tomcat:alpine

RUN chgrp -R 0 /usr/local/tomcat/webapps && chmod -R g+rwX /usr/local/tomcat/webapps

RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
COPY ./sample.war /usr/local/tomcat/webapps/ROOT.war
