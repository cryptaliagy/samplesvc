#!/bin/bash

echo "Setting up $2..."
echo "FLASK_RUN_HOST=0.0.0.0" >> .flaskenv
echo "FLASK_APP=src/$2.py" >> .flaskenv
echo "FLASK_RUN_PORT=$3" >> .env
echo "SERVICE_NAME=$2" >> .env
echo "APP_NAME=$1" >> .env
mv src/samplesvc.py "src/$2.py"
echo "# $2" > README.md
rm ./setup.sh
echo "Done!"
echo "Edit the docker-compose.yaml file to rename the service and"
echo "Make sure to set up your .env file with DB and SECRET"
