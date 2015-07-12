FROM centos:7

RUN yum install -y java-1.7.0-openjdk-headless tar

RUN curl -fL http://mirror.catn.com/pub/apache/zookeeper/stable/zookeeper-3.4.6.tar.gz | tar xzf - -C /opt && mv /opt/zookeeper-3.4.6 /opt/zookeeper

RUN echo "networkaddress.cache.ttl=0" >> /usr/lib/jvm/jre/lib/security/java.security && \
    sed -i 's/networkaddress.cache.negative.ttl=10/networkaddress.cache.negative.ttl=0/g' /usr/lib/jvm/jre/lib/security/java.security

EXPOSE 2181 2888 3888

VOLUME /tmp/zookeeper

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/opt/zookeeper/bin/zkServer.sh", "start-foreground"]
