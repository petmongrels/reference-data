#!/bin/bash -x

PATH_OF_CURRENT_SCRIPT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $PATH_OF_CURRENT_SCRIPT/vagrant_functions.sh

#All config is here
TEMP_REF_APP_WAR_FOLDER=/tmp/deploy_ref_app
CWD=$1
SCRIPTS_DIR=$CWD/scripts/vagrant
REF_DATA_WAR=$1/target/reference-data-0.1.war

# Setup environment
run_in_vagrant -f "$SCRIPTS_DIR/setup_environment.sh"

# Copy Ref App War file to Vagrant tmp
scp_to_vagrant $REF_DATA_WAR $TEMP_REF_APP_WAR_FOLDER/reference-data.war
scp_to_vagrant $REF_DATA_WAR /packages/build/

#Deploy them from Vagrant /tmp to appropriate location
run_in_vagrant -f "$SCRIPTS_DIR/deploy_ref_app_war.sh"

