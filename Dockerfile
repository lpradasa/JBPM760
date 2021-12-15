FROM jboss/jbpm-server-full:latest
RUN sed -i '/<property name="org.kie.server.id" value="sample-server"\/>/d' $JBOSS_HOME/standalone/configuration/standalone.xml

EXPOSE 8080 9990 8081
USER jboss
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"] 
