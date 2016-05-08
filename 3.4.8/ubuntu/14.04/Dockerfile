FROM ubuntu:14.04
MAINTAINER Peter Ericson <pdericson@gmail.com>

RUN apt-get update && \
apt-get install --no-install-recommends -y curl openjdk-7-jre-headless && rm -rf /var/lib/apt/lists/*

# https://www.apache.org/mirrors/dist.html
RUN curl -fL http://archive.apache.org/dist/zookeeper/zookeeper-3.4.8/zookeeper-3.4.8.tar.gz | tar xzf - -C /opt && \
mv /opt/zookeeper-3.4.8 /opt/zookeeper

VOLUME /tmp/zookeeper

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/zookeeper/bin

CMD ["zkServer.sh", "start-foreground"]
