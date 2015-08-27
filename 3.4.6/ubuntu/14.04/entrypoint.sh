#!/bin/bash

echo ${MYID:-1} > /tmp/zookeeper/myid

# based on https://github.com/apache/zookeeper/blob/trunk/conf/zoo_sample.cfg
cat > /opt/zookeeper/conf/zoo.cfg <<EOF
tickTime=${TICK_TIME:-2000}
initLimit=${INIT_LIMIT:-10}
syncLimit=${SYNC_LIMIT:-5}
dataDir=/tmp/zookeeper
clientPort=2181
cnxTimeout=${CNX_TO_MS:-5000}
EOF

# server.1=...
if [ -n "$SERVERS" ]; then
    python -c "print '\n'.join(['server.%i=%s:2888:3888' % (i + 1, x) for i, x in enumerate('$SERVERS'.split(','))])" >> /opt/zookeeper/conf/zoo.cfg
fi

exec "$@"
