#!/bin/bash
#
# launch-job.sh
#
set -x

tower-cli config host "http://${TOWER_HOST}"
tower-cli config username ${TOWER_USER}
tower-cli config password ${TOWER_PASSWORD}
tower-cli config verify_ssl false
tower-cli job launch --job-template="${TOWER_TEMPLATE}" --extra-vars='instance_tag: house001'
