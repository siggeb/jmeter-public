## Background
These scripts 


## Prerequisites

### MSDN subscription
Apart from permissions, also enough credits on a credit card. =)

#### Correct resource providers permissions
Subscription > Resource providers needed:
Microsoft.Network
Microsoft.Storage
Microsoft.Compute

#### Resource limits
In a previous project we had scenarios that needed 600 CPU cores. Make sure to ask Microsooft to raise this limit with enough timeframe. Test the limits with the validate command below. 

Less than 200 CPU cores is handled more promptly, if you need more there is a more thorough audit process needed. 
Ask for more cores in the Dv2-series. 

### In portal, create virtual network with subnet (TODO: Script this)
virtual network: es-vnet: 10.0.0.0/16
subnet: jmeter: 10.0.4.0/24

## Setup infrastructure
Validate template:
`time az group deployment validate --resource-group jmeter --template-file elasticsearch-jmeter/azuredeploy.json --parameters @elasticsearch-jmeter/azuredeploy.parameters.json`

Deploy from root: 
`time az group deployment create --resource-group jmeter --template-file elasticsearch-jmeter/azuredeploy.json --parameters @elasticsearch-jmeter/azuredeploy.parameters.json`

### Troubleshooting infrastructure
Installation log:
`sudo -i`
`cat /var/lib/waagent/custom-script/download/stdout`

## Run test:
ssh to boss-node

Go to /opt/jmeter
run sudo ./run.sh


