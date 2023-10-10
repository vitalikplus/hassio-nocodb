FROM nocodb/nocodb:latest

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["/usr/src/appEntry/start.sh"]

# what is that for?
# LABEL \
#   io.hass.version="VERSION" \
#   io.hass.type="addon" \
#   io.hass.arch="armhf|aarch64|i386|amd64"