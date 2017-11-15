#!/bin/bash
rm /opt/jmeter/report.jtl
rm -r /opt/jmeter/html_report
JVM_ARGS="-Xms1024m -Xmx6144m -XX:NewSize=512m -XX:MaxNewSize=6144m" && export JVM_ARGS && /opt/jmeter/apache-jmeter-3.1/bin/jmeter -n -r -t /opt/jmeter/JMeter_PhantomJS_Template.jmx -DPhantomJS_Driver="/usr/local/bin/phantomjs.exe" -l /opt/jmeter/report.jtl -Grun.properties