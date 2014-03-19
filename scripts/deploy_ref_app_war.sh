#!/bin/sh

TEMP_LOCATION=/tmp/deploy_ref_app
REF_APP_WAR_LOCATION=/home/jss/apache-tomcat-7.0.22/webapps

sudo rm -rf $REF_APP_WAR_LOCATION/reference-data
sudo cp -f $TEMP_LOCATION/* $REF_APP_WAR_LOCATION
