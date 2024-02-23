# It is recommened to use same version as kafka broker is used.
# So no additional images are pulled.
FROM confluentinc/cp-kafka:latest

WORKDIR usr/bin
#WORKDIR root

# Once it is executed, this container is not needed.
COPY create-kafka-topics.sh create-kafka-topics.sh
COPY topic_list.csv topic_list.csv
ENTRYPOINT ["./create-kafka-topics.sh"]
