FROM centos:7

RUN yum install -y java-1.7.0-openjdk-headless tar

# https://www.apache.org/mirrors/dist.html
RUN curl -fL http://apache.mirror.digitalpacific.com.au/zookeeper/stable/zookeeper-3.4.6.tar.gz | tar xzf - -C /opt && \
mv /opt/zookeeper-3.4.6 /opt/zookeeper

RUN echo "networkaddress.cache.ttl=0" >> /usr/lib/jvm/jre/lib/security/java.security && \
    sed -i 's/networkaddress.cache.negative.ttl=10/networkaddress.cache.negative.ttl=0/g' /usr/lib/jvm/jre/lib/security/java.security

EXPOSE 2181 2888 3888

VOLUME /tmp/zookeeper

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/zookeeper/bin

CMD ["zkServer.sh", "start-foreground"]
