FROM nocodb/nocodb:latest

# Copy the new entrypoint script into the image
COPY entrypoint.sh /entrypoint.sh

# Set the new entrypoint
ENTRYPOINT ["/entrypoint.sh"]

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