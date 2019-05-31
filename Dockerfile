
FROM tomcat:8
# Take the war and copy to webapps of tomcat
RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/ROOT.war

COPY build/libs/*.war /usr/local/tomcat/webapps/ROOT.war