Depends on
	kafka_2.12-1.0.0.tgz
	
./gradlew jar buildDocker

docker run -d -p 8080:8080 -t knightloon/dockerweb

To remotely debug application
docker run -d -e "JAVA_OPTS=-agentlib:jdwp=transport=dt_socket,address=8000,server=y,suspend=n" -p 8080:8080 -p 8000:8000 -t knightloon/dockerweb:0.0.1-SNAPSHOT

java -cp ~/projects/demo/build/libs/dockerweb-0.0.1-SNAPSHOT.jar com.example.dm.demo.kafka.producer.KafkaProducerExample

#create kafka topic
bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic davestopic