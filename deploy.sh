#!/bin/bash

cd slipp
pwd

git pull

mvn clean package

~/next-workspace/devweb-workspace/apache-tomcat-8.0.14/bin/shutdown.sh

rsync -avr --delete /Users/javajigi/next-workspace/devweb-workspace/apps/slipp/target/qna /Users/javajigi/next-workspace/devweb-workspace/apache-tomcat-8.0.14/webapps

~/next-workspace/devweb-workspace/apache-tomcat-8.0.14/bin/startup.sh