FROM jboss/jbpm-server-full:latest
sed -i 's/localhost:8080/myjbpm2-cvp-uat.apps.okdprd.cvp.corp/' /opt/jboss/standalone/configuration/standalone.xml

EXPOSE 8080 9990 8001
USER jboss
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"] 

