FROM jboss/jbpm-server-full:7.60.0
EXPOSE 8080
USER jboss
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
