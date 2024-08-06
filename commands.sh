
#Access Kafka container:
docker exec -it <kafka_container_id> /bin/bash

# Locate Kafka binaries:
cd /opt/kafka/bin

# create topic 
./kafka-topics.sh --create --topic test-topic --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1

# Run Kafka Producer
./kafka-console-producer.sh --topic test-topic --bootstrap-server localhost:9092

# Run Kafka Consumer:
docker exec -it <kafka_container_id> /bin/bash
cd /opt/kafka/bin
./kafka-console-consumer.sh --topic test-topic --bootstrap-server localhost:9092 --from-beginning


## Creating a Topic with Multiple Partitions: 
docker exec -it <kafka_container_id> /bin/bash
cd /opt/kafka/bin
./kafka-topics.sh --create --topic test-topic-two --bootstrap-server localhost:9092 --replication-factor 1 --partitions 3 # it will throw error if topic is already there

