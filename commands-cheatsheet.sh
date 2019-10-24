Single Server
#Create a Topic
/usr/local/bin/kafka-topics.sh --create --zookeeper PUBLIC_IP:2181 --replication-factor 1 --partitions 1 --topic TOPIC_1

#Produce Events in Records
/usr/local/bin/kafka-console-producer.sh --broker-list PUBLIC_IP:9092 --topic TOPIC_1

#Consumber for the topic
/usr/local/bin/kafka-console-consumer.sh --zookeeper PUBLIC_IP:2181 --topic TOPIC_1 --from-beginning

#List all Topics
/usr/local/bin/kafka-topics.sh --list --zookeeper PUBLIC_IP:2181

