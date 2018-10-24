#!/bin/bash
rm /opt/jmeter/report.jtl
rm -r /opt/jmeter/html_report
JVM_ARGS="-Xms1024m -Xmx6144m -XX:NewSize=512m -XX:MaxNewSize=6144m" && export JVM_ARGS && /opt/jmeter/apache-jmeter-4.0/bin/jmeter -n -r -t /opt/jmeter/RNB_POP_preprod_JMeter_ChromeDriver.jmx -DChrome_Driver=$(which chromedriver) -Jserver.rmi.ssl.disable=true -l /opt/jmeter/report.jtl -Grun.properties