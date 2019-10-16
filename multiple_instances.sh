#!/bin/bash

# run multiple instances of a jar

echo 'Multiple Instances of a Jar: Starting'

#mvn clean install

app_name='webrest'
no_of_instances=10
start_port=30010


#for i in {1..INSTANCES}
for (( i=0; i<no_of_instances; i++ ))
do
    port=$((start_port+i))
    echo "Starting $app_name at $port"
    java -jar target/enable-spring-boot-2-0.0.2-SNAPSHOT.jar -Dserver.port=$port

done

#app_name=''
#no_of_instances=''
#start_port=''
#
#
#while getopts "a:n:p:" opt; do
#    echo 'Multiple Instances of a Jar: Running'
#
#    case $opt in
#     a)
#      app_name = $OPTARG
#      echo "app_name = $OPTARG" >&2
#      ;;
#
#
#     n)
#      echo "no_of_instances = $OPTARG" >&2
#      ;;
#
#     p)
#      echo "start_port = $OPTARG" >&2
#      ;;
#
#    \?)
#      echo "Invalid option: -$OPTARG" >&2
#      ;;
#  esac
#done
echo 'Multiple Instances of a Jar: Stopping'
