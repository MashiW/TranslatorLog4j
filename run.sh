#!/bin/bash

$CATALINA_HOME/bin/shutdown.sh
mvn clean install -DskipTests;
cp /home/hsenid/Projects/TranslatorLog4j/target/LoginTranslator.war /usr/local/tomcat-8.0.32/webapps;
$CATALINA_HOME/bin/startup.sh
