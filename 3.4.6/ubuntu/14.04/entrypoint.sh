#!/bin/sh

# based on https://github.com/apache/zookeeper/blob/trunk/conf/zoo_sample.cfg
cat > /opt/zookeeper/conf/zoo.cfg <<EOF
tickTime=2000
initLimit=10
syncLimit=5
dataDir=/tmp/zookeeper
clientPort=2181
EOF

# server.1=...
python -c "print '\n'.join(['server.%i=%s' % (i + 1, x) for i, x in enumerate('$SERVERS'.split(','))])" >> /opt/zookeeper/conf/zoo.cfg

echo $MYID > /tmp/zookeeper/myid

exec "$@"
