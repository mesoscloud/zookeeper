FROM centos:7
MAINTAINER Peter Ericson <pdericson@gmail.com>

RUN yum install -y java-1.7.0-openjdk-headless tar

# https://www.apache.org/mirrors/dist.html
RUN curl -fL http://archive.apache.org/dist/zookeeper/zookeeper-3.4.7/zookeeper-3.4.7.tar.gz | tar xzf - -C /opt && \
mv /opt/zookeeper-3.4.7 /opt/zookeeper

VOLUME /tmp/zookeeper

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/zookeeper/bin

CMD ["zkServer.sh", "start-foreground"]
