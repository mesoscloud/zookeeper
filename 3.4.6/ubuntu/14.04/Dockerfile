FROM ubuntu:14.04

RUN apt-get update && apt-get install -y curl openjdk-7-jre-headless python

RUN curl -fL http://mirror.catn.com/pub/apache/zookeeper/stable/zookeeper-3.4.6.tar.gz | tar xzf - -C /opt && mv /opt/zookeeper-3.4.6 /opt/zookeeper

RUN echo "networkaddress.cache.ttl=0" >> /etc/java-7-openjdk/security/java.security && \
    sed -i 's/networkaddress.cache.negative.ttl=10/networkaddress.cache.negative.ttl=0/g' /etc/java-7-openjdk/security/java.security

EXPOSE 2181 2888 3888

VOLUME /tmp/zookeeper

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/opt/zookeeper/bin/zkServer.sh", "start-foreground"]
