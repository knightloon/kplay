#!/bin/bash
KAFKA_HOME=~/apps/kafka_2.12-1.0.0


# Start zookeeper
konsole -e $KAFKA_HOME/bin/zookeeper-server-start.sh $KAFKA_HOME/config/zookeeper.properties

#Start kafka
konsole -e $KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties

