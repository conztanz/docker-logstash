#!/bin/bash
RET=1
while [[ RET -ne 0 ]]; do
    echo "Stalling for Elasticsearch..."
    curl -XGET -u "logstash:$LOGSTASH_PWD" "http://$ELASTICSEARCH_HOST:$ELASTICSEARCH_PORT/_xpack/security/_authenticate" >/dev/null 2>&1
    RET=$?
    sleep 5
done