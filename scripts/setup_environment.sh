#!/bin/sh

TEMP_LOCATION=/tmp/deploy_ref_app

if [[ ! -d $TEMP_LOCATION ]]; then
   mkdir $TEMP_LOCATION
fi

rm -rf $TEMP_LOCATION/*