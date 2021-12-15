FROM jboss/jbpm-server-full:latest
EXPOSE 8080 9990 8001
USER jboss
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"] 

