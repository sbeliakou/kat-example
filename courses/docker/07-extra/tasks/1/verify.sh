#!/bin/bash

[ `docker info 2>&1 | grep -c "Logging.Driver..syslog"` -eq 1 ] &&
echo done