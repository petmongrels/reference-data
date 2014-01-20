#!/bin/sh

SCRIPTS_DIR=`dirname $0`
set -e

$SCRIPTS_DIR/tearDownDB.sh
$SCRIPTS_DIR/setupDB.sh
