#!/bin/bash

# Defaults
: ${LOAD_PATH:=""}
: ${CONF_PATH:="${LOAD_PATH}/etc"}
: ${LIB_PATH:="${LOAD_PATH}/lib/semian-army"}
: ${INT_MONKEY_PATH:="${LIB_PATH}/monkeys"}
: ${EXT_MONKEY_PATH:="/usr/lib/monkey"}

echo $LOAD_PATH
echo $LIB_PATH
echo $CONF_PATH

# load
source ${LIB_PATH}/core.bash
source ${CONF_PATH}/semian-army.conf 2>/dev/null # ignore errors
source ${LIB_PATH}/log.bash

# die on the first error
set -e