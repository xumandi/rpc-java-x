#!/usr/bin/env bash

export JVM_OPTIONS=" -server -Xmn2g -Xmx6g -Xms6g -Xss256k -Xverify:none \
 -XX:+DisableExplicitGC -XX:+AlwaysPreTouch \
 -XX:+AggressiveOpts -XX:AutoBoxCacheMax=20000 \
 -XX:CMSInitiatingOccupancyFraction=75 -XX:+UseCMSInitiatingOccupancyOnly \
 -XX:+UseParNewGC -XX:+UseConcMarkSweepGC -XX:ParallelGCThreads=4 \
 -XX:+PrintGCDetails  -XX:+PrintGCTimeStamps -Xloggc:./logs/server_gc.log "

export CUSTOM_CLASSPATH="target/classes:target/test-classes:target/dependency/* "

export MAIN_CLASS="com.github.wenweihu86.rpc.server.RPCServerTest"

java $JVM_OPTIONS -cp $CUSTOM_CLASSPATH $MAIN_CLASS
