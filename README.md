# zookeeper

[![Join the chat at https://gitter.im/mesoscloud/zookeeper](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/mesoscloud/zookeeper?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

ZooKeeper

https://zookeeper.apache.org/

## CentOS

[![](https://badge.imagelayers.io/mesoscloud/zookeeper:3.4.8-centos-7.svg)](https://imagelayers.io/?images=mesoscloud/zookeeper:3.4.8-centos-7)

e.g.

```
docker run -d \
-e MYID=1 \
-e SERVERS=node-1,node-2,node-3 \
--name=zookeeper --net=host --restart=always mesoscloud/zookeeper:3.4.8-centos-7
```

## Ubuntu

[![](https://badge.imagelayers.io/mesoscloud/zookeeper:3.4.8-ubuntu-14.04.svg)](https://imagelayers.io/?images=mesoscloud/zookeeper:3.4.8-ubuntu-14.04)

e.g.

```
docker run -d \
-e MYID=1 \
-e SERVERS=node-1,node-2,node-3 \
--name=zookeeper --net=host --restart=always mesoscloud/zookeeper:3.4.8-ubuntu-14.04
```
