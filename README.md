# zookeeper

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
