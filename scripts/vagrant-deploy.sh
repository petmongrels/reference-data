#!/bin/bash

#All config is here
TEMP_REF_APP_WAR_FOLDER=/tmp/deploy_ref_app
MACHINE_IP=192.168.33.10
CWD=$1
SCRIPTS_DIR=$CWD/scripts
KEY_FILE=~/.vagrant.d/insecure_private_key
REF_DATA_WAR=$1/target/reference-data-0.1.war

# Setup environment
ssh vagrant@$MACHINE_IP -i $KEY_FILE < $SCRIPTS_DIR/setup_environment.sh

# Kill tomcat
ssh vagrant@$MACHINE_IP -i $KEY_FILE < $SCRIPTS_DIR/tomcat_stop.sh

# Copy Ref App War file to Vagrant tmp
scp  -i $KEY_FILE $REF_DATA_WAR vagrant@$MACHINE_IP:$TEMP_REF_APP_WAR_FOLDER/reference-data.war

#Deploy them from Vagrant /tmp to appropriate location
ssh vagrant@$MACHINE_IP -i $KEY_FILE < $SCRIPTS_DIR/deploy_ref_app_war.sh

# Restart tomcat
ssh vagrant@$MACHINE_IP -i $KEY_FILE < $SCRIPTS_DIR/tomcat_start.sh
