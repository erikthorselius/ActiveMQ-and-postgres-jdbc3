#!/usr/bin/env bash

echo "Create jetty-realm.properties file..."
sed -e "s/CONSOLE_USERNAME/${CONSOLE_USERNAME}/" \
    -e "s/CONSOLE_PASSWORD/${CONSOLE_PASSWORD}/" \
    conf/jetty-realm.properties.template > conf/jetty-realm.properties

echo "Create credentials.properties file..."
sed -e "s/QUEUE_USERNAME/${QUEUE_USERNAME}/" \
    -e "s/QUEUE_PASSWORD/${QUEUE_PASSWORD}/" \
    conf/credentials.properties.template > conf/credentials.properties

echo "Starting ActiveMQ..."
bin/activemq console
