#!/bin/bash

nohup tcpdump -A -s 0 'tcp port 8761 and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)' \
-w /usr/local/eureka/pcap/eureka.pcap &

echo "********************************************************"
echo "Starting eureka "
echo "********************************************************"
java \
-Djava.security.egd=file:/dev/./urandom \
-jar /usr/local/eureka/@project.build.finalName@.jar