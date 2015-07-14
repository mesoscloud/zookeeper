# zookeeper

[![Join the chat at https://gitter.im/mesoscloud/zookeeper](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/mesoscloud/zookeeper?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

*Work in progress*

## centos

[![](https://badge.imagelayers.io/mesoscloud/zookeeper:3.4.6-centos-7.svg)](https://imagelayers.io/?images=mesoscloud/zookeeper:3.4.6-centos-7)

Usage example:

```
docker run -d \
-e SERVERS=master-1,master-2,master-3 \
-e MYID=1 \
--name zookeeper --net host --restart always mesoscloud/zookeeper:3.4.6-centos-7
```

## ubuntu

[![](https://badge.imagelayers.io/mesoscloud/zookeeper:3.4.6-ubuntu-14.04.svg)](https://imagelayers.io/?images=mesoscloud/zookeeper:3.4.6-ubuntu-14.04)
