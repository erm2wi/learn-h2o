#!/bin/bash

        echo "Running through scripts to set up EC2 + H2O..."
        echo
        set -e

        echo "Setting up cluster instances..."
        echo
        ./h2o-cluster-launch-instances.py

