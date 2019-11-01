FROM quay.io/azkaoru/tomcat9.0.27-cluster-java13

ADD target/jsp-counter.war /opt/tomcat9/webapps

RUN chown -R 1001:0 /opt/tomcat9/  && \
    chown -h 1001:0 /opt/tomcat9 && \
    chmod -R ug+rwx /opt/tomcat9/
 
USER 1001
EXPOSE 8080
WORKDIR /opt/tomcat9
