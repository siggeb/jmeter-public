#!/bin/bash
rm /opt/jmeter/report.jtl
rm -r /opt/jmeter/html_report
/opt/jmeter/apache-jmeter-3.1/bin/jmeter -n -r -t /opt/jmeter/Na-KD_Prodhttp_JMeter_PhantomJS.jmx -DPhantomJS_Driver="$(which phantomjs)" -l /opt/jmeter/report.jtl -Grun.properties
