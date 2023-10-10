FROM nocodb/nocodb:latest

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["/usr/src/appEntry/start.sh"]

ARG BUILD_ARCH
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_VERSION

LABEL \
    io.hass.name="${BUILD_NAME}" \
    io.hass.description="${BUILD_DESCRIPTION}" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="vitalikplus (https://github.com/vitalikplus)"