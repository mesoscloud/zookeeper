FROM centos:7

RUN yum install -y java-1.7.0-openjdk-headless tar

RUN curl -fL http://mirror.catn.com/pub/apache/zookeeper/stable/zookeeper-3.4.6.tar.gz | tar xzf - -C /opt && mv /opt/zookeeper-3.4.6 /opt/zookeeper

VOLUME /tmp/zookeeper

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/opt/zookeeper/bin/zkServer.sh", "start-foreground"]
