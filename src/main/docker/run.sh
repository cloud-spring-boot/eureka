#!/bin/bash
echo "********************************************************"
echo "Starting eureka "
echo "********************************************************"
java \
-Djava.security.egd=file:/dev/./urandom \
-jar /usr/local/eureka/@project.build.finalName@.jar