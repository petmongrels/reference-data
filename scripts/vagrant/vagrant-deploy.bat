@echo off 

REM !!!!IMPORTANT!!!!
REM Before using this script to deploy do the following
REM Add putty to your path
REM Use puttygen to generate win_insecure_private_key.ppk from your %USERPROFILE%\.vagrant.d\insecure_private_key that comes along with vagrant.
REM !!!End of IMPORTANT!!!

REM All config is here

set MACHINE_IP=192.168.33.10
set TEMP_ELIS_WAR_FOLDER=/tmp/deploy_ref_app
set CWD=%1
set SCRIPTS_DIR=%CWD%/scripts
set KEY_FILE=%USERPROFILE%\.vagrant.d\win_insecure_private_key.ppk
set REF_DATA_WAR=%1\target\reference-data-0.1.war

if exist %KEY_FILE% (
    REM setup
    putty -ssh vagrant@%MACHINE_IP% -i %KEY_FILE% -m %SCRIPTS_DIR%/setup_environment.sh
    REM Copy Ref-app war to Vagrant tmp
    pscp  -i %KEY_FILE% %REF_DATA_WAR% vagrant@%MACHINE_IP%:%TEMP_ELIS_WAR_FOLDER%/reference-data.war
    REM Copy Elis war to Tomcat from tmp
    putty -ssh vagrant@%MACHINE_IP% -i %KEY_FILE% -m %SCRIPTS_DIR%/deploy_ref_app_war.sh
) else (
    echo Use puttygen to generate win_insecure_private_key.ppk from your %USERPROFILE%\.vagrant.d\insecure_private_key that comes along with vagrant.
)

