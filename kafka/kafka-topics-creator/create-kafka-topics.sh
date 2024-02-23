#!/bin/bash

# Wait until the kafka and zookeeper containers are started.
sleep 30.0s

# Read the file that contains one topic per line and convert it into a single string separated by space
fileContent=$(cat topic_list.csv)
kafkaTopicsArrayString=$(echo $fileContent | tr '\n' ' ')
IFS=' ' read -r -a kafkaTopicsArray <<< "$kafkaTopicsArrayString"

# Zookeeper hosts
bootstrapHostsValue=$BOOTSTRAP_HOSTS

echo "Zookeeper host: " "$bootstrapHostsValue"

# Iterate and create kafka topics
for newTopic in "${kafkaTopicsArray[@]}"; do
  echo "Running command: kafka-topics --create --if-not-exists --bootstrap-server "$bootstrapHostsValue" --partitions 1 --replication-factor 1 --topic "$newTopic""
  kafka-topics --create --if-not-exists --bootstrap-server "$bootstrapHostsValue" --partitions 1 --replication-factor 1 --topic "$newTopic"
done