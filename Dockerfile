FROM jboss/jbpm-server-full
RUN sed -i '/<property name="org.kie.server.location" value="http:\/\/http://myjbpm2-cvp-uat.apps.okdprd.cvp.corp\/business-central\/rest\/controller"\/>/d' $JBOSS_HOME/standalone/configuration/standalone.xml
RUN sed -i '/<property name="org.kie.server.location" value="http:\/\/http://myjbpm2-cvp-uat.apps.okdprd.cvp.corp\/kie-server\/services\/rest\/server"\/>/d' $JBOSS_HOME/standalone/configuration/standalone.xml

EXPOSE 8080
USER jboss
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
