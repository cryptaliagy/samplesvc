#!/bin/bash

echo "Setting up $1..."
echo "FLASK_RUN_HOST=0.0.0.0" >> .flaskenv
echo "FLASK_RUN_PORT=$2" >> .flaskenv
echo "FLASK_APP=src/$1.py" >> .flaskenv
echo "SERVICE_NAME=$1" >> .env
echo "PORT=$2" >> .env
mv src/samplesvc.py "src/$1.py"
echo "# $1" > README.md
rm ./setup.sh
echo "Done!"
echo "Edit the docker-compose.yaml file to rename the service and"
echo "Make sure to set up your .env file with DB and SECRET"
