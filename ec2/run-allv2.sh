	#!/bin/bash

	echo "Running through scripts to set up EC2 + H2O..."
	echo
	set -e

	echo "Setting up cluster instances..."
	echo
	./h2o-cluster-launch-instances.py
	echo "Getting latest stable build of H2O and disitributing across instances..."
	echo
	#./h2o-cluster-download-h2o.sh
        ansible-playbook -i hosts  -u ec2-user setuph2o03.yml
        echo "distribute startscripts.sh"
        ./distribute-startscript.sh 

	echo "Starting up H2O Cluster..."
	echo
	./h2o-cluster-start-h2o.sh
