#!/bin/bash
set -e

if [ -n "$(ls -A ${APACHEDS_DATA})" ]
  then
    echo "existing installation found"
  else
    echo "preparing for first start ..."
    cp -R /tmpl/instances /opt/apacheds/
fi

chown -R ${APACHEDS_USER} /opt/apacheds/

# Clean left over pid file
pidFile=${APACHEDS_DATA}/run/apacheds-${APACHEDS_INSTANCE}.pid
[[ -e $pidFile ]] && rm $pidFile

# Execute the server in console mode and not as a daemon.
sudo -u ${APACHEDS_USER} bash -c "/opt/apacheds/bin/apacheds.sh ${APACHEDS_INSTANCE} run"
