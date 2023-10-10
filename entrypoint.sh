#!/bin/sh

# Copy the value from OPTIONS_NC_DB to NC_DB
export NC_DB=$OPTIONS_NC_DB
export NC_AUTH_JWT_SECRET=$OPTIONS_NC_AUTH_JWT_SECRET

# Execute the original entrypoint/command
exec "/usr/src/appEntry/start.sh"
