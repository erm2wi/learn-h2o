        echo "Getting latest stable build of H2O and disitributing across instances..."
        echo
        #./h2o-cluster-download-h2o.sh
	ansible-playbook -i hosts  -u ec2-user setuph2o03.yml
	ansible-playbook -i hosts  -u ec2-user setuppython12.yml
	echo "distribute startscripts.sh"
        ./distribute-startscript.sh

        echo "Starting up H2O Cluster..."
        echo
        ./h2o-cluster-start-h2o.sh

