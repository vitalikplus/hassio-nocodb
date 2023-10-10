#!/bin/sh

# Copy the value from OPTIONS_NC_DB to NC_DB
export NC_DB=$OPTIONS_NC_DB

# Execute the original entrypoint/command
exec "/usr/src/appEntry/start.sh"
